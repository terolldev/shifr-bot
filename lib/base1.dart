import 'package:nyxx/nyxx.dart';
import 'dart:math';
void hand(String command, event) async {
  var sEmbed = EmbedBuilder()
      ..color = DiscordColor.orange
      ..description = "$command"
      ..thumbnailUrl = event.interaction.userAuthor!.avatarURL();
  await event.sendFollowup(MessageBuilder.embed(sEmbed));
}