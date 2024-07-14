import 'package:flutter/material.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Users"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text("User"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
