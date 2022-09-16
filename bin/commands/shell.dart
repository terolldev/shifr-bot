import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:darrrr/base.dart';
final Shell = SlashCommandBuilder("shell", "console bot", [CommandOptionBuilder(CommandOptionType.string, 
"text", "Write text on shell", 
required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    hand(event.args[0].value, event);
  });