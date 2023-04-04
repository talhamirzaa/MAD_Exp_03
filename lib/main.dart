import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // debugShowCheckedModeBanner: false,
  home: ProfilePage(),
));


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int accessLevel =1;

  @override
  Widget build(BuildContext context) {

    print("Build method called");
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/profile/male_profile.png'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
              thickness: 4.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Nilesh Ghavate',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Address',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mumbai',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Contact',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '9594813901',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(

              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'nilesh@dbit.in',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Data Access Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$accessLevel',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor:Colors.grey[850],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            label: "Like",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_down),
            label: "Dislike",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: "Comment",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            accessLevel +=1;
          });


        },
        child: Icon(Icons.move_up),
      ),
    );
  }
}

