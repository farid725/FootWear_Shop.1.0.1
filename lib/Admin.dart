import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:footwear_shop/db/main2.dart';
import 'package:footwear_shop/db/main3.dart';
import 'package:footwear_shop/main.dart';
import 'package:sqflite/sqflite.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameContr = TextEditingController();
    TextEditingController priceContr = TextEditingController();
    TextEditingController exContr = TextEditingController();
   void sentDB()async{
      Model model = Model(nameContr.text, priceContr.text, exContr.text);
      var result = DatabaseHelper.intance.insert(model);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MyHomePage(title: "title"),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        centerTitle: true,
        title: Text(
          'Admin panel',
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Stack(
                  children: [
                     ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: 100,minHeight: 100,maxWidth: 200,maxHeight: 200
                        ),
                      child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70,
                      ),
                      child: const Center (
                          child: Text('Upload a picture')
                      ),
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 160,left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.file_download_outlined,
                            size: 30,
                            color: Colors.blueGrey,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(top: 10,right: 40,left: 40),
              child: TextFormField(
                controller: nameContr,
                keyboardType: TextInputType.name,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Product Name',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                ),
                validator: FormValidator().validateEmail,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,right: 40,left: 40),
              child: TextFormField(
                controller: priceContr,
                keyboardType: TextInputType.number,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Product Price',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                ),
                validator: FormValidator().validateEmail,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,right: 40,left: 40),
              child: TextFormField(
controller: exContr,
                keyboardType: TextInputType.name,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Explanation',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                ),
                validator: FormValidator().validateEmail,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 35),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      sentDB();
                    },
                    child: Text('Done'),
                  ),
                )
            ),
          ],
        ),
      ),
    );

  }

}


class FormValidator {
  get validateEmail => null;
}