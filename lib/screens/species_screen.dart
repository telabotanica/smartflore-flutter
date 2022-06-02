import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({Key? key}) : super(key: key);

  @override
  State<SpeciesScreen> createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          shadowColor: const Color(0x00000000),
          title: const Text("nom de l'espèce",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 250.0, viewportFraction: 1),
              items: [
                'https://jardinage.lemonde.fr/images/dossiers/historique/coquelicot-fleur-184011.jpg',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Coquelicot%281%29.JPG/1200px-Coquelicot%281%29.JPG',
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Papaver_rhoeas_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-101.jpg/290px-Papaver_rhoeas_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-101.jpg',
                'https://img-3.journaldesfemmes.fr/3ckoTtH87Rzpi3BuYpP4grWMk_Y=/1500x/smart/485eb0043f5b4850b658a519c96699c3/ccmcms-jdf/11433864.jpg',
                'https://i1.wp.com/www.millevarietesanciennes.org/wp-content/uploads/2019/03/Champ-de-Coquelicot.jpg?fit=1280%2C797&ssl=1'
              ].map((i) {
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
            )
          ],
        ));
  }
}
