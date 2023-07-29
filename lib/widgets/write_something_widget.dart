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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 22.0,
                  backgroundImage: AssetImage('assets/story5.jpg'),
                ),

                const SizedBox(width: 5.0),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width/1.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Colors.white54
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: const Text('Bạn đang nghĩ gì?'),
                ),

                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                    child: const Icon(Icons.photo_library, size: 20.0, color: Colors.green),
                )

              ],
            ),
          ),

          // const Divider(),

          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 10.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: <Widget>[
          //       Row(
          //         children: <Widget>[
          //           const Icon(Icons.live_tv, size: 20.0, color: Colors.pink,),
          //           const SizedBox(width: 5.0,),
          //           Text('Live', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
          //         ],
          //       ),
          //       Container(height: 20, child: VerticalDivider(color: Colors.grey[600])),
          //       Row(
          //         children: <Widget>[
          //           const Icon(Icons.photo_library, size: 20.0, color: Colors.green,),
          //           const SizedBox(width: 5.0),
          //           Text('Photo', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
          //         ],
          //       ),
          //       SizedBox(height: 20, child: VerticalDivider(color: Colors.grey[600])),
          //       Row(
          //         children: <Widget>[
          //           const Icon(Icons.video_call, size: 20.0, color: Colors.purple,),
          //           const SizedBox(width: 5.0,),
          //           Text('Room', style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16.0)),
          //         ],
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}