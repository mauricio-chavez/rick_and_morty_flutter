import 'package:flutter/material.dart';
import '../widgets/characters_list.dart';
import '../../models/character_model.dart';
import '../../repositories/characters_provider.dart';

class Home extends StatefulWidget {

  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  Future<Characters> characters;

  @override
  void initState() {
    super.initState();
    characters = fetchCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Rick and Morty')),
        body: Center(
          child: FutureBuilder<Characters>(
            future: characters,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return CharactersList(characters: snapshot.data);
              } else if (snapshot.hasError) {
                return Text(snapshot.error);
              }

              return CircularProgressIndicator();

            },
          ),
        ));
  }
}
