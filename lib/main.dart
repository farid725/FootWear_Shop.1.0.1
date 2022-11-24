import 'package:flutter/material.dart';
import 'package:footwear_shop/Drawer.dart';
import 'package:footwear_shop/ScreenPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Footwear Shop',
      theme: ThemeData(
          drawerTheme:const DrawerThemeData(backgroundColor: Colors.black54)),
      home: const MyHomePage(title: 'Footwear Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List name = [
      'Nike Air Max', 'Nike Vernero',
      'Runners', 'Zoom Flyknite',
      'New Arrival', 'Nike Air Max',
      'Nike Vernero', 'Runners',
      'Zoom Flyknite', 'New Arrival',
    ];

    List imageName = [
      'assets/nnn.jpg', 'assets/p.png',
      'assets/nike.png', 'assets/p.png',
      'assets/11.png', 'assets/nike.png',
      'assets/p.png', 'assets/mn.jpg',
      'assets/nike.png', 'assets/p.png'
    ];

    List size = [
      'Size: 34-44', 'Size: 38-42',
      'Size: 36-43', 'Size: 39-41',
      'Size: 34-44', 'Size: 38-42',
      'Size: 36-43', 'Size: 39-41',
      'Size: 34-44', 'Size: 38-42',
    ];

    final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
        centerTitle: true,
        title: const Text(
          'Footwear Shop',
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.white70,
      ),
      drawer: DrawerPage(),
      body: Container(
        height: Size.height *1.0,
        width: MediaQuery.of(context).size.width *1.0,
        child: Padding(
          padding: EdgeInsets.only(left: 5,right: 5),
          child: ListView.builder(
            itemCount: imageName.length,
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (context, index) {
              return ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenPage(
                            imageShoe: imageName[index],
                            name: name[index],
                          ),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Container(
                      width: 350,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(size[index]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 45),
                            child: Image.asset(
                              imageName[index],
                              width: MediaQuery.of(context).size.width *0.3,
                              height: MediaQuery.of(context).size.height *1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      )
    );
  }
}
