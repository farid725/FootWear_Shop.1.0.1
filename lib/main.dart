import 'package:flutter/material.dart';
import 'package:footwear_shop/Drawer.dart';
import 'package:footwear_shop/ScreenPage.dart';
import 'package:footwear_shop/mainview.dart';
import 'package:provider/provider.dart';
import 'db/main2.dart';
import 'db/main3.dart';

void main() {
  runApp(    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MainView()),
    ],
    child: const MyApp(),
  ),);
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

  void taskItemList(context){
    MainView mainProvider = Provider.of<MainView>(context, listen: false);
    mainProvider.update();
  }
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

    final Model task;

/*
    void updateTaskList(context) {
      MainView mainProvider =
      Provider.of<MainView>(context, listen: false);
      mainProvider.update();
    }

    void deleteTask(context) async {
      await DatabaseHelper.intance.delete(Model.id!);

      updateTaskList(context);
    }*/

    final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        centerTitle: true,
        title: const Text(
          'Footwear Shop',
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.white70,
      ),
      drawer: DrawerPage(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .8,
        child: Consumer<MainView>(
          builder: (context, value, child) {
            return FutureBuilder(
              future: DatabaseHelper.intance.getTasks(),
              builder: ((context, AsyncSnapshot<List<Model>> snapshot) {
                return ListView.builder(
                  padding: EdgeInsets.only(bottom: 10, right: 10),
                  itemBuilder: (context, index) {
                    return ListTile(
                      /*trailing: PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              value: 'edit',
                              child: Text('Edit'),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Text('Delete'),
                            )
                          ];
                        },
                        onSelected: (String value) {
                          if (value == "edit") {
                            Navigator.of(context)
                                .push(
                              MaterialPageRoute(
                                builder: (context) => ThirdPage(
                                  currentTask: Model,
                                ),
                              ),
                            )
                                .then((value) => updateTaskList(context));
                          } else if (value == "delete") {
                            deleteTask(context);
                          }
                        },
                      ),*/
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
                                        snapshot.data?[index].productName??"--",
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
                  itemCount: snapshot.data?.length ?? 0,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
