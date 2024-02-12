class Chord {
  final String title;
  final String imagePath;
  const Chord({required this.title, required this.imagePath});

  static Map<String, List<Chord>> getChordsByRoot(String root) {
    return {
      'C': [const Chord(title: "C Major", imagePath: "assets/c_major.jpg")],
    };
  }
}
