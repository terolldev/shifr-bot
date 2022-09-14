import 'dart:math';
import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';

Future<void> Mute(IButtonInteractionEvent event) async {
  await event.acknowledge(hidden: true);
  var selfmute = event.interaction.memberAuthor!.voiceState!.selfMute;
  var servermute = event.interaction.memberAuthor!.mute;
  if (selfmute == true) {
    await event.sendFollowup(MessageBuilder.content("You are selfmute!"), hidden: true);
  } else if (servermute == true) {
    await event.sendFollowup(MessageBuilder.content("You are server mute!"), hidden: true);
  } else {
  await event.interaction.memberAuthor?.edit(builder: MemberBuilder() ..mute = true,  auditReason: "Button press [Mute]" );
  await event.sendFollowup(MessageBuilder.content("Complite!"), hidden: true);
}}

Future<void> Unmute(IButtonInteractionEvent event) async {
  await event.acknowledge(hidden: true);
  var selfmute = event.interaction.memberAuthor!.voiceState!.selfMute;
  var servermute = event.interaction.memberAuthor!.mute;
  if (selfmute == true) {
    await event.sendFollowup(MessageBuilder.content("You are selfmute!"), hidden: true);
  } else if (servermute == false) {
    await event.sendFollowup(MessageBuilder.content("You are not server mute!"), hidden: true);
  } else {
  await event.interaction.memberAuthor?.edit(builder: MemberBuilder() ..mute = false, auditReason: "Button press [UnMute]" );
  await event.sendFollowup(MessageBuilder.content("Complite!"), hidden: true);
}}

// final Test = SlashCommandBuilder("test", "Test command", [], canBeUsedInDm: false)
//   ..registerHandler((event) async {
//     var embed = EmbedBuilder()
//       ..description = "Mute embed"
//       ..color = DiscordColor.fromInt(Random().nextInt(99999));
//     var component = ComponentRowBuilder()
//       ..addComponent(ButtonBuilder("Mute", "Найс", ButtonStyle.danger))
//       ..addComponent(ButtonBuilder("Unmute", "Ннайс", ButtonStyle.success));
//     var new1 = ComponentMessageBuilder()
//       ..embeds = [embed]
//       ..addComponentRow(component);
//     await event.respond(new1);
//   });