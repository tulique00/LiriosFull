import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(LiriosApp());

class LiriosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lirios para Victoria',
      debugShowCheckedModeBanner: false,
      home: LiriosScreen(),
    );
  }
}

class LiriosScreen extends StatefulWidget {
  @override
  _LiriosScreenState createState() => _LiriosScreenState();
}

class _LiriosScreenState extends State<LiriosScreen> {
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    player.play(AssetSource('musica.mp3'));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/lirios.png'),
                SizedBox(height: 20),
                Text(
                  'Lirios virtuales para Victoria,\ncon cariño de Enrique 🌸',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlue[100],
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '"Como lirios en la brisa suave,\n\nasí es tu sonrisa, clara y suave,\n\nVictoria, flor de luz entre versos,\n\nmi poema en calma, mi universo."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[200],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}