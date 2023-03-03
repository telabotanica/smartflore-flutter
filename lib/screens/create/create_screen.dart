import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/components/search/list_item.dart';
import 'package:smartflore/models/algolia/taxon_hits_model.dart';
import 'package:smartflore/utils/app.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final PagingController<int, TaxonHit> _pagingController =
      PagingController(firstPageKey: 0);
  late Algolia algolia;
  String currentSearch = '';
  TaxonHit? selectedTaxon;
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    algolia = Application.algolia;

    textController.addListener(() {
      setState(() {
        currentSearch = textController.text;
      });

      onSearch();
    });

    _pagingController.addPageRequestListener((pageKey) {
      if (pageKey > 0) {
        onSearch(page: pageKey);
      }
    });
  }

  onSearch({int page = 0}) async {
    if (currentSearch != '') {
      var query = algolia.instance
          .index(
            'Flore',
          )
          .query(currentSearch)
          .setPage(page)
          .setAttributesToRetrieve([
            'referentiels',
            'bdtfx.scientific_name',
            'bdtfx.common_name',
            'bdtfx.nomenclatural_number'
          ])
          .setAttributesToHighlight(
            ['bdtfx.scientific_name', 'bdtfx.common_name'],
          )
          .facetFilter('referentiels:bdtfx')
          .setHitsPerPage(10);

      AlgoliaQuerySnapshot snap = await query.getObjects();
      TaxonHits taxonHits = TaxonHits.fromResponse(snap);
      if (page == 0) {
        _pagingController.refresh();
      }
      _pagingController.appendPage(taxonHits.hits, taxonHits.nextPageKey);
    } else {
      _pagingController.refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
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
            title: Text('Ajouter un individu',
                style: Theme.of(context).textTheme.bodyText1)),
        body: Stack(
          children: [
            selectedTaxon == null
                ? buildSearchUI(theme)
                : buildTaxonUI(theme, screenW),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.15))
                      ],
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  child: const Padding(
                    padding: EdgeInsets.all(36.0),
                    child: SizedBox(
                      height: 46,
                      child: RoundedButton(
                        label: 'Ajouter',
                      ),
                    ),
                  )),
            )
          ],
        ));
  }

  Widget buildHits(BuildContext context, ThemeData theme) {
    TextStyle matchScientificStyle = TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: theme.colorScheme.primary);
    TextStyle matchCommonStyle = TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: theme.colorScheme.primary);

    TextStyle defaultScientificStyle =
        matchScientificStyle.copyWith(color: const Color(0xFF778992));
    TextStyle defaultCommonStyle =
        matchCommonStyle.copyWith(color: const Color(0xFF778992));

    return PagedListView<int, TaxonHit>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<TaxonHit>(
            noItemsFoundIndicatorBuilder: (_) => const Center(
                  child: Text('No results found'),
                ),
            itemBuilder: (_, item, __) {
              if (item.bdtfx != null) {
                if (item.highlightResult != null &&
                    item.highlightResult!.bdtfx != null &&
                    (item.highlightResult!.bdtfx!.scientificName != null &&
                        item.highlightResult!.bdtfx!.commonName != null)) {
                  return TextButton(
                    onPressed: () {
                      setState(() {
                        selectedTaxon = item;
                      });
                      print('item=== ${item.bdtfx!.nomenclaturalNumber}');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // <-- Radius
                      ),
                    ),
                    child: ListItemUI(
                      scientificName:
                          item.highlightResult!.bdtfx!.scientificName!.value ??
                              '',
                      commonName:
                          item.highlightResult!.bdtfx!.commonName!.value ?? '',
                      defaultCommonStyle: defaultCommonStyle,
                      matchCommonStyle: matchCommonStyle,
                      defaultScientificStyle: defaultScientificStyle,
                      matchScientificStyle: matchScientificStyle,
                    ),
                  );
                } else {
                  return Container();
                }
              } else {
                return Container();
              }
            }));
  }

  Widget buildSearchUI(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(36.0, 16, 36, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldWithTitle(
            isMandatory: true,
            id: 'taxonName',
            index: 0,
            title: 'Espèce',
            hintText: '',
            keyboardType: TextInputType.emailAddress,
            titleStyle: Theme.of(context).textTheme.headline6,
            hintStyle: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black.withOpacity(0.4)),
            textController: textController,
            onSaved: (value) {},
          ),
          (currentSearch != '')
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: Container(child: buildHits(context, theme)),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  Widget buildTaxonUI(ThemeData theme, double screenW) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: Text(
              'Espèce',
              style: theme.textTheme.headline6,
            ),
          ),
          Container(
              width: screenW - 72,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD8DCD8), width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(6))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        selectedTaxon!.bdtfx!.scientificName != null &&
                                selectedTaxon!.bdtfx!.scientificName != ''
                            ? Text(selectedTaxon!.bdtfx!.scientificName ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyText1!
                                    .copyWith(fontStyle: FontStyle.italic))
                            : Container(),
                        selectedTaxon!.bdtfx!.commonName != null &&
                                selectedTaxon!.bdtfx!.commonName != ''
                            ? Text(selectedTaxon!.bdtfx!.commonName!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyText2)
                            : Container()
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTaxon = null;
                      });
                    },
                    child: Icon(
                      Icons.close,
                      size: 20.0,
                      color: theme.colorScheme.primary,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    textController.dispose();
    super.dispose();
  }
}
