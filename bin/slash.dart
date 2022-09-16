import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'commands/convert.dart';
import 'commands/translit.dart';
import 'commands/codec.dart';
import 'commands/mute.dart';
import 'commands/shell.dart';
import 'commands/reply.dart';
void createSlash(bot) {

    IInteractions.create(WebsocketInteractionBackend(bot))
      ..registerSlashCommand(Convert) // CONVERT!
      ..registerSlashCommand(Translit) // TRANSLIT!
      ..registerSlashCommand(Codec) // CODEC!
      ..registerSlashCommand(Shell) // SHELL!
      ..registerSlashCommand(Reply) // REPLY!
      // -----------------------
      // Button handler
      ..registerButtonHandler("Найс", Mute)
      ..registerButtonHandler("Ннайс", Unmute)
      // -----------------------
      ..syncOnReady();
}