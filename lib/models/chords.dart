class Chord {
  final String quality;
  final String rootNote;
  const Chord({required this.quality, required this.rootNote});

  static final Map<int, String> keyNumberToNoteName = {
    1: 'C',
    2: 'C#',
    3: 'D',
    4: 'D#',
    5: 'E',
    6: 'F',
    7: 'F#',
    8: 'G',
    9: 'G#',
    10: 'A',
    11: 'A#',
    12: 'B'
  };
  static final Map<String, int> noteNameToKeyNumber = {
    'C': 1,
    'C#': 2,
    'D': 3,
    'D#': 4,
    'E': 5,
    'F': 6,
    'F#': 7,
    'G': 8,
    'G#': 9,
    'A': 10,
    'A#': 11,
    'B': 12
  };

  static Map<String, List<Chord>> getChordsByRoot(String root) {
    return {
      'C': [const Chord(quality: "major", rootNote: "C")],
      'D': [const Chord(quality: "major", rootNote: "D")]
    };
  }

  static List<bool> chordGenerator(String chordQuality, String rootNote) {
    List<bool> isSelectedList = List.generate(13, (index) => false);
    int root = noteNameToKeyNumber[rootNote]!;
    if (chordQuality == 'major') {
      isSelectedList[root] = true;
      isSelectedList[(root + 4) % 12] = true;
      isSelectedList[(root + 7) % 12] = true;
    }

    return isSelectedList;
  }

    
}
