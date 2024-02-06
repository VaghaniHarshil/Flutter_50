import "package:audioplayers/audioplayers.dart";

final player = AudioPlayer();

Map<String, String> morseCodeMap = {
  'A': '.-',
  'B': '-...',
  'C': '-.-.',
  'D': '-..',
  'E': '.',
  'F': '..-.',
  'G': '--.',
  'H': '....',
  'I': '..',
  'J': '.---',
  'K': '-.-',
  'L': '.-..',
  'M': '--',
  'N': '-.',
  'O': '---',
  'P': '.--.',
  'Q': '--.-',
  'R': '.-.',
  'S': '...',
  'T': '-',
  'U': '..-',
  'V': '...-',
  'W': '.--',
  'X': '-..-',
  'Y': '-.--',
  'Z': '--..',
  '1': '.----',
  '2': '..---',
  '3': '...--',
  '4': '....-',
  '5': '.....',
  '6': '-....',
  '7': '--...',
  '8': '---..',
  '9': '----.',
  '0': '-----',
  ' ': '/ ',
  '.': '.-.-.-',
  ',': '--..--',
  '?': '..--..',
  '\'': '.----.',
  '!': '-.-.--',
  '/': '-..-.',
  '(': '-.--.',
  ')': '-.--.-',
  '&': '.-...',
  ':': '---...',
  ';': '-.-.-.',
  '=': '-...-',
  '+': '.-.-.',
  '-': '-....-',
  '_': '..--.-',
  '\"': '.-..-.',
  '\$': '...-..-',
  '@': '.--.-.',
};

String texttomorse(String text) {
  String rawmorsecode = text.toUpperCase().split('').map((String letter) {
    return morseCodeMap[letter] ?? '';
  }).join(" ");

  String finalmorsecode = rawmorsecode.replaceAll("?", "");

  return finalmorsecode;
}

void playmorse(String code) async {
  const dotDuration = 100;

  for (int i = 0; i < code.length; i++) {
    if (code[i] == ".") {
      await player.play(AssetSource("audios/Dot.mp3"));
      await Future.delayed(const Duration(milliseconds: 4 * dotDuration));
    } else if (code[i] == "-") {
      await player.play(AssetSource("audios/Dash.mp3"));
      await Future.delayed(const Duration(milliseconds: 5 * dotDuration));
    } else if (code[i] == " ") {
      await Future.delayed(const Duration(milliseconds: 6 * dotDuration));
    }
  }
}
