import 'dart:io';
import 'dart:math';

import "package:nyxx/nyxx.dart";
import 'slash.dart';
void main() {
  final bot = NyxxFactory.createNyxxWebsocket("ODE1MzE1Mzg4MDczNjM5OTQ4.GzxR6m.IgkO6ZY11lvxCASV8QpS-SuLahRD63ehKf1GcI", GatewayIntents.all,
  options: ClientOptions(initialPresence: PresenceBuilder.of(
    activity: ActivityBuilder.watching("on birds"),
    status: UserStatus.idle
  ),))
    ..registerPlugin(Logging()) 
    ..registerPlugin(CliIntegration()) 
    ..registerPlugin(IgnoreExceptions()) 
    ..connect();
  createSlash(bot);
}