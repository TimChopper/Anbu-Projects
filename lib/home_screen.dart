import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 246, 122),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 40,
        title: Text(
          "TUDO",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: const Color.fromARGB(255, 225, 84, 84).withOpacity(0.5),
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: _buildImageContainer("https://i.pinimg.com/564x/c0/99/46/c099469ab6a037fa9480c93222d80c7f.jpg"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: _buildImageContainer("https://media.self.com/photos/5c0ab29c9eb2e62d386974e9/master/pass/people-eating-at-table.jpg"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
              child: _buildImageContainer("https://www.euroschoolindia.com/wp-content/uploads/2023/08/study-rewards.jpg"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(3.5, 6.5),
            blurRadius: 6.0,
          ),
        ],
      ),
    );
  }
}
