import 'package:flutter/material.dart';

class ListviewReward extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: 10,

            scrollDirection: Axis.horizontal,
            itemBuilder: (Context, index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
                image: DecorationImage(image: AssetImage('Images/spinwheel.png'),alignment: Alignment.bottomRight,),
              ),
              height: 100,
              width: 170,
              margin: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Rewards'),
                  ),
            
                ],
              ),

            ),

          ),
        ),
      ],
    );
  }
}
