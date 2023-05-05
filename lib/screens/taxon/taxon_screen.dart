import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/taxon/taxon_bloc.dart';
import 'package:smartflore/components/gallery/gallery.dart';
import 'package:smartflore/models/taxon/tab_icon_hash.dart';
import 'package:smartflore/models/taxon/taxon_enum.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/screens/taxon/taxon_description_screen.dart';
import 'package:smartflore/screens/webview/webview_screen.dart';

class TaxonScreen extends StatefulWidget {
  final int taxonID;
  final String taxonRepo;
  final String? vernacularName;
  final String? scientificName;

  const TaxonScreen(
      {Key? key,
      required this.taxonID,
      required this.taxonRepo,
      this.vernacularName,
      this.scientificName})
      : super(key: key);

  @override
  State<TaxonScreen> createState() => _TaxonScreenState();
}

class _TaxonScreenState extends State<TaxonScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // REQUEST FULL TAXON DATA
    BlocProvider.of<TaxonBloc>(context)
        .add(TaxonEvent.loadTaxonData(widget.taxonRepo, widget.taxonID));
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);
    BlocListener<TaxonBloc, TaxonState>(listener: (context, state) {
      state.whenOrNull(
        loaded: (taxon) {
          _tabController =
              TabController(vsync: this, length: taxon.tabs.length);
        },
      );
    });

    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> getTabs(Taxon taxon) {
    List<Widget> tabs = [];
    late int index = 0;
    for (var tab in taxon.tabs) {
      tabs.add(
        SizedBox(
          height: 50,
          child: Tab(
              icon: Icon(
            TabIconHash.getIcon(tab.icon),
            size: 24,
            color: (_tabController.index == index)
                ? Colors.white
                : Theme.of(context).colorScheme.primary,
          )),
        ),
      );
      index++;
    }
    return tabs;
  }

  List<Widget> getTabViews(Taxon taxon) {
    List<Widget> tabViews = [];
    for (var tab in taxon.tabs) {
      if (tab.type == TabTypeEnum.webview.name) {
        tabViews.add(WebViewScreen(url: tab.url ?? ''));
      } else if (tab.type == TabTypeEnum.card.name) {
        tabViews.add(SpeciesDescription(tabData: tab));
      } else if (tab.type == TabTypeEnum.gallery.name) {
        tabViews.add(Gallery(images: tab.images!));
      }
    }
    return tabViews;
  }

  Widget buildTabView() {
    return BlocBuilder<TaxonBloc, TaxonState>(builder: (context, state) {
      return state.when(
          initial: () => Center(
              child: Container(
                  color: Colors.white,
                  child: const CircularProgressIndicator())),
          loading: () => Center(
              child: Container(
                  color: Colors.white,
                  child: const CircularProgressIndicator())),
          loaded: (taxon) => SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: getTabViews(taxon),
                  ),
                ),
              ),
          error: () => Container());
    });
  }

  Widget buildBottomBar() {
    return BlocBuilder<TaxonBloc, TaxonState>(builder: (context, state) {
      return state.maybeWhen(
          loaded: (taxon) => Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(6.0)),
                  child: Container(
                    color: Colors.black,
                    child: SafeArea(
                        child: Container(
                      color: Colors.white,
                      child: TabBar(
                          isScrollable: false,
                          controller: _tabController,
                          indicator: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          tabs: getTabs(taxon)),
                    )),
                  ),
                ),
              ),
          orElse: () => Container());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leadingWidth: 40,
            leading: ModalRoute.of(context)?.canPop == true
                ? SizedBox(
                    width: 15,
                    child: IconButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 24,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  )
                : null,
            iconTheme: const IconThemeData(color: Color(0xFF13161C), size: 14),
            backgroundColor: Theme.of(context).colorScheme.background,
            shadowColor: const Color(0x00000000),
            centerTitle: false,
            titleSpacing: 0.0,
            title: RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                        text: (widget.vernacularName != '')
                            ? '${widget.vernacularName} — '
                            : ''),
                    TextSpan(
                        text: widget.scientificName,
                        style: const TextStyle(fontStyle: FontStyle.italic))
                  ]),
            )),
        body: Stack(children: [
          Center(child: buildTabView()),
          buildBottomBar(),
        ]));
  }
}
