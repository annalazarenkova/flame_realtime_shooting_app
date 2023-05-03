import 'package:flame/game.dart';
import 'package:flame_realtime_shooting/game/game.dart';
import 'package:flame_realtime_shooting/pages/game_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

void main() async {
await Supabase.initialize(
url: 'https://qqlcxchkktkodirymqrl.supabase.co',
anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFxbGN4Y2hra3Rrb2RpcnltcXJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODMxMTU2OTYsImV4cCI6MTk5ODY5MTY5Nn0.qCTAp6XSb9Nfd2yVaSfJ_K60lFLVJomFpbyswllNF8I',
realtimeClientOptions: const RealtimeClientOptions(eventsPerSecond: 40),
);
runApp(const MyApp());
}

// Extract Supabase client for easy access to Supabase
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UFO Shooting Game',
      debugShowCheckedModeBanner: false,
      home: GamePage(),
    );
  }
}
