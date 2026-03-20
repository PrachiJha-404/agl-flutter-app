import 'package:flutter/material.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(),
    );
    
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _aglVersion = '';
  bool showImage = false;
  final _player = AudioPlayer();
  @override
  void initState(){
    super.initState();
    _loadAglVersion();
  }
  
  Future<void> _loadAglVersion() async {
    final file = File('/etc/os-release');
    final contents = await file.readAsString();
    final lines = contents.split('\n');
    for (final line in lines){
      if (line.startsWith('PRETTY_NAME')){
        final l = line.split('=');
        setState((){
          _aglVersion = l[1].replaceAll('"', '');
        }); 
        break;
      }
    }
     
    
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: Text('AGL Quiz App'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Version: $_aglVersion'),
          Text('Name: Prachi Jha'),
          ElevatedButton(
            onPressed: () {
            setState(() {
              showImage = !showImage;
            });
          },
          child: Text('Show Image'),
          ),
          ElevatedButton(
            onPressed: () {
              _player.play(AssetSource('fahhhhh.mp3'));
              },
            
          child: Text('Play Sound'),),
          if (showImage) Image.asset('assets/images.jpeg'),
          
        
        
      ])));
  }
}