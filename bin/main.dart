import "package:nyxx/nyxx.dart";
import 'slash.dart';
import 'package:darrrr/ch.dart';
void main() {
  final bot = NyxxFactory.createNyxxWebsocket(Obj().TOKEN, Obj().INTENT,
  options: ClientOptions(initialPresence: PresenceBuilder.of(
    activity: Obj().STATUS,
    status: Obj().ACT
  ),))
    ..registerPlugin(Logging())
    ..registerPlugin(CliIntegration()) 
    ..registerPlugin(IgnoreExceptions()) 
    ..connect();
  createSlash(bot);
}