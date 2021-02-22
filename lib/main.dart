import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: UserProfile()));
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SectionTitle(text: "USER PROFILE"),
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 24.0,
          semanticLabel: 'Increase the Ninja level',
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: CircleAvatar(
              child: Image.asset("assets/universe-2.jpg"),
              backgroundColor: Colors.transparent,
              radius: 40,
            )),
            SizedBox(
              height: 32,
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.white60, letterSpacing: 2),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Chung Li",
              style: TextStyle(
                  color: Colors.green[200], fontSize: 30, letterSpacing: 2),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "NINJA LEVEL",
              style: TextStyle(color: Colors.white60, letterSpacing: 2),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                  color: Colors.green[200], fontSize: 30, letterSpacing: 2),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  width: 8,
                ),
                Text("chung.li@gmail.com",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1)),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final text;

  SectionTitle({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style:
          TextStyle(color: Colors.green[300], fontSize: 24, letterSpacing: 2),
    );
  }
}
