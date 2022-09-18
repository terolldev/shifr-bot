import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import 'package:darrrr/handler/bl.co.dart';
import 'package:darrrr/handler/unix.dart';
final Stats = SlashCommandBuilder("test", "Test comamnd", [], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    var status = event.interaction.memberAuthor?.voiceState;
    final embed = EmbedBuilder()
      ..color = DiscordColor.blurple;
    embed.addField(name: "SelfMute", content: BlCo("${status?.selfMute}", "cs"), inline: true);
    embed.addField(name: "SelfDeaf", content: BlCo("${status?.selfDeaf}", "cs"), inline: true);
    embed.addField(name: "Video", content: BlCo("${status?.selfVideo}", "cs"), inline: true);
    embed.addField(name: "Stream", content: BlCo("${status?.selfStream}", "cs"), inline: true);
    embed.addField(name: "ChannelId", content: BlCo("${status?.channel?.id}", "cs"), inline: true);
    await event.sendFollowup(MessageBuilder.embed(embed));
  });