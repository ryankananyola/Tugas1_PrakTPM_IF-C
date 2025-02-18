import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/image/profil2.png'),
            onBackgroundImageError: (exception, stackTrace) {
              debugPrint('Error loading image: $exception');
            },
          ),
          SizedBox(height: 10),
          Text(
            'Yohanes Febryan Kana Nyola',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            '123220198',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Tombol 1')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){}, child: Text('Tombol 2')),
              SizedBox(width: 10),
              ElevatedButton(onPressed: (){}, child: Text('Tombol 3')),
            ],
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              _buildGridItem(Colors.blue),
              _buildGridItem(Colors.green),
              _buildGridItem(Colors.red),
              _buildGridItem(Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildGridItem(Color color) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FlutterLogo(size: 40),
      ),
    );
  }
}
