import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import '../../lib/handler/cod.dart';
import '../../lib/handler/uncod.dart';
import '../../lib/handler/trans.dart';

final Codec = SlashCommandBuilder("codec", "convert English lang", [CommandOptionBuilder(CommandOptionType.string, 
"text", "Write text on English", 
required: true), CommandOptionBuilder(CommandOptionType.string, "type", "Select codec and uncodec", choices: [ArgChoiceBuilder("codec", "cd"), 
ArgChoiceBuilder("uncodec", "uc")], required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    final args = replace(event.args[0].value);
    if (event.args[1].value == "cd") {
      var coda = Cod(args);
      final embed = EmbedBuilder()
      ..title = "Codec!"
      ..color = DiscordColor.blurple
      ..description = "$coda";
    await event.sendFollowup(MessageBuilder.embed(embed));
    } else if (event.args[1].value == "uc") {
      var coda = Decode(args);
      final embed = EmbedBuilder()
      ..title = "Decodec!"
      ..color = DiscordColor.blurple
      ..description = "$coda";
    await event.sendFollowup(MessageBuilder.embed(embed));
    } else {
      final embed = EmbedBuilder()
      ..title = "Error!"
      ..color = DiscordColor.red
      ..description = "Unsupport type the codec";
    await event.sendFollowup(MessageBuilder.embed(embed));
    }

  });