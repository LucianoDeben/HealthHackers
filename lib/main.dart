import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:healthhackers/src/ui/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://vuvdnvvszkuvfwhtfpww.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ1dmRudnZzemt1dmZ3aHRmcHd3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc3NjQ4NDgsImV4cCI6MjAyMzM0MDg0OH0.wzimjz5_X2d7Tbm7Bm-P9NzybMm92UJuimn3MRvM-74',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SupabaseAuthState(
      child: MaterialApp(
        title: 'Health Hackers',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
