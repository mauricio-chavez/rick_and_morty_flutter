class Character {
  final String name;
  final String status;
  final String image;

  Character({this.name, this.status, this.image});
}

class Characters {
  final List<Character> characters;

  Characters({this.characters});

  factory Characters.fromJson(Map<String, dynamic> json) {
    List<Character> characters = [];
    json['results'].forEach((character) {
      characters.add(Character(
          name: character['name'],
          status: character['status'],
          image: character['image']));
    });

    return Characters(characters: characters);
  }
}
