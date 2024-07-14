import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(160),
                      color: Colors.red),
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Card(
                    color: Colors.grey.shade100,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    child: Column(children: [
                      ListTile(
                        title: Text("Email : "),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("Name : "),
                      ),
                      Divider(),
                      ListTile(
                        title: Text("The number of real estate :  "),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text("Change Password  "),
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text("Favorates"),
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text("My real estate"),
                        ),
                      ),
                    ]),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text("Sign Out"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
