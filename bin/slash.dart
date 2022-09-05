import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'commands/convert.dart';
import 'commands/translit.dart';
import 'commands/codec.dart';

void createSlash(bot) {

    IInteractions.create(WebsocketInteractionBackend(bot))
      ..registerSlashCommand(Convert) // CONVERT!
      ..registerSlashCommand(Translit) // TRANSLIT!
      ..registerSlashCommand(Codec) // CODEC!
      ..syncOnReady();
}