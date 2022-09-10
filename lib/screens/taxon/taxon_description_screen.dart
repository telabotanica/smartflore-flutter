import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:image_fade/image_fade.dart';
import 'package:smartflore/components/cards/section.dart';
import 'package:smartflore/components/gallery/image_with_loader.dart';
import 'package:smartflore/models/taxon/taxon_app_model.dart';
import 'package:smartflore/models/taxon/taxon_model.dart';

class SpeciesDescription extends StatefulWidget {
  final TabData tabData;
  const SpeciesDescription({Key? key, required this.tabData}) : super(key: key);

  @override
  State<SpeciesDescription> createState() => _SpeciesDescriptionState();
}

class _SpeciesDescriptionState extends State<SpeciesDescription> {
  List<String> getCarouselImages(List<ImageAPI>? images, {int max = 4}) {
    List<String> galleryItems = [];
    int index = 0;
    if (images == null) return galleryItems;
    for (var image in images) {
      if (index < max) {
        galleryItems.add(image.url);
        index++;
      } else {
        break;
      }
    }
    return galleryItems;
  }

  int _current = 0;
  List<String> galleryItems = [];
  final CarouselController _controller = CarouselController();
  @override
  void initState() {
    if (widget.tabData.images != null) {
      galleryItems = getCarouselImages(widget.tabData.images);
    }
    super.initState();
  }

  List<Widget> buildSections(List<SectionAPI> sections) {
    List<Widget> sectionList = [];
    int index = 0;
    for (var section in sections) {
      sectionList.add(Section(
          sectionData: section, hasSeparator: index < sections.length - 1));
      index++;
    }

    return sectionList;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CarouselSlider(
                carouselController: _controller,
                options: CarouselOptions(
                  height: 250.0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: galleryItems.map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ImageWithLoader(url: url));
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 250,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: galleryItems.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOutCubic),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 3.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (_current == entry.key)
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.background),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 25, 36, 36),
            child: Column(children: buildSections(widget.tabData.sections!)),
          ),
        ],
      ),
    );
  }
}
