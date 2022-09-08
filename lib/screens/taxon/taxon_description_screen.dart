import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

class SpeciesDescription extends StatefulWidget {
  const SpeciesDescription({Key? key}) : super(key: key);

  @override
  State<SpeciesDescription> createState() => _SpeciesDescriptionState();
}

class _SpeciesDescriptionState extends State<SpeciesDescription> {
  List<String> items = [
    'https://jardinage.lemonde.fr/images/dossiers/historique/coquelicot-fleur-184011.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Coquelicot%281%29.JPG/1200px-Coquelicot%281%29.JPG',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Papaver_rhoeas_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-101.jpg/290px-Papaver_rhoeas_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-101.jpg',
    'https://img-3.journaldesfemmes.fr/3ckoTtH87Rzpi3BuYpP4grWMk_Y=/1500x/smart/485eb0043f5b4850b658a519c96699c3/ccmcms-jdf/11433864.jpg',
    'https://i1.wp.com/www.millevarietesanciennes.org/wp-content/uploads/2019/03/Champ-de-Coquelicot.jpg?fit=1280%2C797&ssl=1'
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                items: items.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImageWithRetry(
                                    i,
                                  ),
                                  fit: BoxFit.cover)));
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
                    children: items.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOutCubic),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context)
                                  .colorScheme
                                  .background
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          TabBar(
              isScrollable: false,
              unselectedLabelColor: Theme.of(context).colorScheme.primary,
              indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(4))),
              tabs: const [
                Tab(text: 'Description'),
                Tab(text: 'Usage'),
                Tab(text: 'Écologie & habitat'),
              ]),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  child: const Text('TEST>>>>>>>>>>> 1 '),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: const Text('TEST>>>>>>>>>>> 2'),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.purple,
                  child: const Text('TEST>>>>>>>>>>> 3'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
