import 'package:nyxx_interactions/nyxx_interactions.dart';
import 'package:nyxx/nyxx.dart';
import '../../lib/handler/unix.dart';

final Convert = SlashCommandBuilder("convert", "Convert DateTime in timestamp", [CommandOptionBuilder(CommandOptionType.string,
"date", "Select date", required: true), CommandOptionBuilder(CommandOptionType.string, 'format', 'Format unix', choices: [ArgChoiceBuilder('short', 'R'), ArgChoiceBuilder('all', 'F')], required: true)], canBeUsedInDm: false)
  ..registerHandler((event) async {
    await event.acknowledge(hidden: true);
    try {
    var dat = DateTime.parse(event.args[0].value);
    final date = Unix(dat);
    final embed = EmbedBuilder()
      ..description = "Unix: <t:${date}:${event.args[1].value}> || `<t:${date}:${event.args[1].value}>`\n\nTimestamp: ${date}\n\nDate: ```\n$dat\n```"
      ..title = "Convert Date in timestamp"
      ..color = DiscordColor.blurple;
    await event.sendFollowup(MessageBuilder.embed(embed));

    } catch (error) {
      final embed = EmbedBuilder()
      ..description = "Enter the correct date\n\n-"
      ..title = "Error!"
      ..addFooter((footer) {
        footer.text = error.toString();
      }, )
      ..color = DiscordColor.indianRed;
    await event.sendFollowup(MessageBuilder.embed(embed));
    }
  });