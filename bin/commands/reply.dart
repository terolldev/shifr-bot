import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:darrrr/base1.dart';
final Reply = SlashCommandBuilder("reply", "reply on the bot", [CommandOptionBuilder(CommandOptionType.string, 
"text", "Write text", 
required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge();
    hand(event.args[0].value, event);
  });