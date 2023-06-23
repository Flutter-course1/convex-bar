import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex= 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ConvexAppBar'),centerTitle: true,),
      body: const Center(
          child: Text(
           'ConvexAppBar'),),
      bottomNavigationBar: StyleProvider(
        style: Style(),
        child: ConvexAppBar(
          style: TabStyle.reactCircle,
          backgroundColor: Colors.white,
          activeColor: Colors.lightGreen.shade200,
          color: Colors.grey,
          height: 80,
          top: -30,
          curveSize: 90,

          items:  [
            TabItem(icon:  Icon(Icons.home,color: selectedIndex == 0 ? Colors.lightGreen: Colors.grey,),title: 'Home'),
            TabItem(icon: Icon(Icons.location_on,color: selectedIndex == 1 ? Colors.lightGreen: Colors.grey,),title: 'Address' ),
            TabItem(icon:  Icon(Icons.list,color: selectedIndex == 2 ? Colors.lightGreen: Colors.grey,),title: 'My Order' ),
            TabItem(icon: Icon(Icons.call,color: selectedIndex == 3 ? Colors.lightGreen: Colors.grey,),title: 'Contact us' ),
          ],
          initialActiveIndex: 1,
          onTap: (int i) {
            setState(() {
    selectedIndex = i;
            });
    }

        ),
      ),
    );
  }
}
class Style extends StyleHook {
  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 15;

  @override
  double get iconSize => 30;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(fontSize: 14, color: color);
  }
}