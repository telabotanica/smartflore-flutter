import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/taxon/taxon_bloc.dart';
import 'package:smartflore/components/gallery/gallery.dart';
import 'package:smartflore/screens/taxon/taxon_description_screen.dart';
import 'package:smartflore/screens/taxon/taxon_webview_screen.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class TaxonScreen extends StatefulWidget {
  final int taxonID;
  final String taxonRepo;

  const TaxonScreen({Key? key, required this.taxonID, required this.taxonRepo})
      : super(key: key);

  @override
  State<TaxonScreen> createState() => _TaxonScreenState();
}

class _TaxonScreenState extends State<TaxonScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    BlocProvider.of<TaxonBloc>(context).add(LoadTaxonDataEvent(
        taxonID: widget.taxonID, taxonRepo: widget.taxonRepo));
    _tabController = TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaxonBloc, TaxonState>(builder: (context, state) {
      if (state is TaxonInitialState) {
        return const SizedBox(
          width: 200,
          height: 150,
        );
      } else if (state is TaxonLoadedState) {
        return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.black, //change your color here
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
              shadowColor: const Color(0x00000000),
              title: Text(state.taxon.scientificName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            body: Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: TabBarView(
                      controller: _tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        SpeciesDescription(),
                        Gallery(),
                        WebViewScreen(),
                        SpeciesDescription(),
                      ],
                    ),
                  ),
                ),
                Align(
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
                              tabs: [
                                SizedBox(
                                  height: 50,
                                  child: Tab(
                                      icon: Icon(
                                    SmartFloreIcons.iconDetails,
                                    size: 24,
                                    color: (_tabController.index == 0)
                                        ? Colors.white
                                        : Theme.of(context).colorScheme.primary,
                                  )),
                                ),
                                Tab(
                                    icon: Icon(
                                  SmartFloreIcons.iconGallery,
                                  size: 24,
                                  color: (_tabController.index == 1)
                                      ? Colors.white
                                      : Theme.of(context).colorScheme.primary,
                                )),
                                Tab(
                                    icon: Icon(
                                  SmartFloreIcons.iconWiki,
                                  size: 24,
                                  color: (_tabController.index == 2)
                                      ? Colors.white
                                      : Theme.of(context).colorScheme.primary,
                                )),
                                Tab(
                                    icon: Icon(
                                  SmartFloreIcons.iconMap,
                                  size: 24,
                                  color: (_tabController.index == 3)
                                      ? Colors.white
                                      : Theme.of(context).colorScheme.primary,
                                )),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ));
      } else {
        return const SizedBox(
          width: 150,
          height: 200,
        );
      }
    });
  }
}
