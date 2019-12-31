import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/character_model.dart';

Future<Characters> fetchCharacters() async {
  final response = await http.get('https://rickandmortyapi.com/api/character/');
  if (response.statusCode == 200) {
    return Characters.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load character');
  }
}
