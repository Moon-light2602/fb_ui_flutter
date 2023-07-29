import 'package:flutter/material.dart';

class WriteSomethingWidget extends StatelessWidget {
  const WriteSomethingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage('assets/story5.jpg'),
                ),

                SizedBox(width: 5.0),
                
                Expanded(child: SizedBox(height: 34, child: TextField(
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.photo_library, color: Colors.green,
                    ),
                    isDense: true,
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 10),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.black26,
                        style: BorderStyle.solid,
                        width: 1
                      ),
                    ),
                  ),
                ),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}