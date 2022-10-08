import 'dart:math';
import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
final Rnd = SlashCommandBuilder("random", "random number ? - ?", [CommandOptionBuilder(CommandOptionType.number,
"min", "Select minimum number", required: true), CommandOptionBuilder(CommandOptionType.number,
"max", "Select maximum number", required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    try{
    var min = event.getArg("min").value.hashCode;
    var max = event.getArg("max").value.hashCode;
    if(max < min) {max=min;min=max;}
    var number = Random().nextInt(max) + min;
    final embed = EmbedBuilder()
      ..description = "You number!: ```cs\n$number\n```"
      ..color = DiscordColor.blurple;
    await event.sendFollowup(MessageBuilder.embed(embed));
    } catch(e) {await event.respond(MessageBuilder.content("```cs\n$e\n```"));}
  });