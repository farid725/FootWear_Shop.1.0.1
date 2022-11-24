import 'package:flutter/material.dart';
import 'package:footwear_shop/Admin.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: Column(
              children: [
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.account_circle_rounded,
                      size: 80,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Hi, Aslam',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: Colors.blueGrey),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.blueGrey,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 12,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.settings,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text(
              "Choose Category",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              "Clothing",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              "Kid's",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const ListTile(
            title: Text(
              "About",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 340,left: 20,right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AdminPage(),));
              },
              child: Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blueGrey.shade300,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 12,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Admin',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
