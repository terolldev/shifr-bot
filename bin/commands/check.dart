import 'dart:math';
import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import 'package:darrrr/base.dart';

final Create = SlashCommandBuilder("create", "Create account in bd", [CommandOptionBuilder(CommandOptionType.string, 
"text", "Write text", 
required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    print(sear("${event.interaction.userAuthor?.id}").toString());
    if (sear("${event.interaction.userAuthor?.id}") == null) {
    create("${event.interaction.userAuthor?.id}", event.args[0].value);
    final embed = EmbedBuilder()
      ..color = DiscordColor.blurple
      ..description = 'You created account in bd\nText: ${event.args[0].value}';
    await event.sendFollowup(MessageBuilder.embed(embed));
    } else {
      final embed = EmbedBuilder()
      ..title = "Error!"
      ..color = DiscordColor.red
      ..description = 'You are created account in bd!';
    await event.sendFollowup(MessageBuilder.embed(embed));
    }
  });