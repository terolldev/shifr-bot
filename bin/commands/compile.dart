import 'dart:math';
import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import 'package:darrrr/handler/trans.dart';

final Compile = SlashCommandBuilder("compile", "convert user in code", [], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    try {
      var user = event.interaction.userAuthor?.username;
      user ??= Random().nextInt(20092001020192022) as String?;
      var nu1 = user?.hashCode;
      var nu = nu1! * Random().nextInt(12038474) + 123;
      var newnu = nu.toString();
      var newwnu = newnu.replaceAll("1", "if");
      var n1 = newwnu.replaceAll("2", "(");
      var n2 = n1.replaceAll("3", ")");
      var n3 = n2.replaceAll("4", "{");
      var n4 = n3.replaceAll("5", "}");
      var n5 = n4.replaceAll("6", "else if");
      var n6 = n5.replaceAll("7", "try");
      var n7 = n6.replaceAll("8", "await");
      var n8 = n7.replaceAll("9", "[");
      var n9 = n8.replaceAll("0", "]");
      if(nu == nu) {
        final embed = EmbedBuilder()
          ..description = "You compile: ```cs\n$n9\n```"
          ..color = DiscordColor.blurple;
        await event.sendFollowup(MessageBuilder.embed(embed));
      }
    } catch (e) {
      await event.sendFollowup(MessageBuilder.content("$e"));
    }
  });