import 'package:flutter/material.dart';

void main() => runApp(WorldFriendLinkApp());

class WorldFriendLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WORLD FRIEND LINK - ALL LEO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> pages = [VoicePage(), VideoPage(), SmsPage(), BluetoothPage()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WORLD FRIEND LINK - ALL LEO'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Voice'),
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: 'Video'),
          BottomNavigationBarItem(icon: Icon(Icons.sms), label: 'SMS'),
          BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'Bluetooth'),
        ],
      ),
    );
  }
}

class VoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.call, size: 120, color: Colors.green),
        SizedBox(height: 20),
        Text('VOICE CALL', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Padding(padding: EdgeInsets.all(20), child: Text('Piga simu bure duniani kote ndani ya App ya ALL LEO', textAlign: TextAlign.center)),
        ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)), icon: Icon(Icons.call, color: Colors.white), label: Text('ANZA VOICE CALL', style: TextStyle(color: Colors.white))),
      ]),
    );
  }
}

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.videocam, size: 120, color: Colors.red),
        SizedBox(height: 20),
        Text('VIDEO CALL', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Padding(padding: EdgeInsets.all(20), child: Text('Video Call HD - Ona rafiki yako uso kwa uso', textAlign: TextAlign.center)),
        ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.red, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)), icon: Icon(Icons.video_call, color: Colors.white), label: Text('ANZA VIDEO CALL', style: TextStyle(color: Colors.white))),
      ]),
    );
  }
}

class SmsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.sms, size: 120, color: Colors.blue),
        SizedBox(height: 20),
        Text('SMS CHAT', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Padding(padding: EdgeInsets.all(20), child: Text('Tuma SMS bure ndani ya App - Bila gharama ya mitandao', textAlign: TextAlign.center)),
        ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)), icon: Icon(Icons.send, color: Colors.white), label: Text('TUMA SMS', style: TextStyle(color: Colors.white))),
      ]),
    );
  }
}

class BluetoothPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.bluetooth, size: 120, color: Colors.deepPurple),
        SizedBox(height: 20),
        Text('BLUETOOTH', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        Padding(padding: EdgeInsets.all(20), child: Text('Unganisha na vifaa vya karibu bila internet - Share files', textAlign: TextAlign.center)),
        ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple, padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)), icon: Icon(Icons.bluetooth_searching, color: Colors.white), label: Text('SCAN BLUETOOTH', style: TextStyle(color: Colors.white))),
      ]),
    );
  }
}
