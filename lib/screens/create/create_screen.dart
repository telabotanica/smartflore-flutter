import 'package:flutter/material.dart';
import 'package:smartflore/components/map/map_widget.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    STACK :
      -- MAP
      -- CREATE UI
      -- CREATE_MODE : 
        -- TITLE
        -- MAP
        -- ADD_TAXON : add credit to pic
        -- SAVE
        -- LEAVE

    */
    return const MapWidget();
  }
}
