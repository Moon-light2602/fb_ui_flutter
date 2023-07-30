import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  Widget _buildStory() => Container(
        margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/avatar.jpg',
                width: 120,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/story5.jpg',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ),
            const Positioned(
                bottom: -5,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Din Din',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) => _buildStory()
            ),
          ),
        ],
      ),
    );
  }
}
