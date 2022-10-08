import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'commands/convert.dart';
import 'commands/translit.dart';
import 'commands/codec.dart';
import 'commands/mute.dart';
import 'commands/reply.dart';
import 'commands/stats.dart';
import 'commands/compile.dart';
import 'commands/random.dart';
void createSlash(bot) {

    IInteractions.create(WebsocketInteractionBackend(bot))
      ..registerSlashCommand(Convert) // CONVERT!
      ..registerSlashCommand(Translit) // TRANSLIT!
      ..registerSlashCommand(Codec) // CODEC!
      ..registerSlashCommand(Reply) // REPLY!
      ..registerSlashCommand(Stats) // Test command - dnammoc tseT
      ..registerSlashCommand(Compile) // COMPILE!
      ..registerSlashCommand(Rnd) // RANDOM!
      // -----------------------
      // Button handler
      ..registerButtonHandler("Найс", Mute)
      ..registerButtonHandler("Ннайс", Unmute)
      // -----------------------
      ..syncOnReady();
}