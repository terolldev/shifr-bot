import 'dart:math';
import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import '../../lib/handler/trans.dart';

final Translit = SlashCommandBuilder("translit", "convert Russian lang", [CommandOptionBuilder(CommandOptionType.string, 
"text", "Write text on Russain", 
required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    final randomcolor = [DiscordColor.aquamarine, DiscordColor.blue, DiscordColor.orange, DiscordColor.magenta, DiscordColor.sapGreen, DiscordColor.gold,
    DiscordColor.indianRed, DiscordColor.yellow, DiscordColor.azure, DiscordColor.purple, DiscordColor.rose, DiscordColor.teal, DiscordColor.violet];
    String text = replace(event.args[0].value);
    final embed = EmbedBuilder()
      ..title = "Translit"
      ..description = '$text'
      ..color = randomcolor[Random().nextInt(13)];
    await event.sendFollowup(MessageBuilder.embed(embed));
  });