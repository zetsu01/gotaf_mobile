import 'package:just_audio/just_audio.dart';

class LocalPlayer {
  playLocalAudio(String url) async {
    AudioPlayer player = AudioPlayer();
    var duration = await player.setAsset(url);
    player.play();
    print(duration);
  }
}
