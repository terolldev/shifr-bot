import 'package:nyxx/nyxx.dart';
import 'dart:math';
void hand(String command, event) async {
  var sEmbed = EmbedBuilder()
      ..color = DiscordColor.fromInt(Random().nextInt(0x100000));
  if(command == "\$return") {
    sEmbed.description = "```\nCode has been returned\n```";
  } else if(command == "\$send") {
    sEmbed.description = "```\nPrint: send\n```";
  } else {
    sEmbed.description = "```\nError: ${Random().nextInt(99999999)}\n```";
  } 
  await event.sendFollowup(MessageBuilder.embed(sEmbed));
}