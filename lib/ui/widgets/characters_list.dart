import 'package:flutter/material.dart';
import 'character_card.dart';
import 'package:rick_and_morty/models/character_model.dart';

class CharactersList extends StatelessWidget {
  final Characters characters;

  CharactersList({this.characters});

  @override
  Widget build(BuildContext context) {
    List<Widget> characterList = [];

    characters.characters.forEach((character) {
      characterList.add(CharacterCard(
          name: character.name,
          status: character.status,
          image: character.image));
    });

    return ListView(padding: const EdgeInsets.all(8), children: characterList);
  }
}
