import 'package:flutter/material.dart';

class ListviewPopular extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
      height: 218,
      child: ListView.builder(
        itemCount: 10,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (Context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            image: DecorationImage(image: AssetImage('Images/shoes1.jpg'),alignment: Alignment.topCenter,),
          ),
          height: 120,
          width: 170,
          margin: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('NIKE ZOOMX',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('SHOW . RUN AND SMILE',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Container(
                        child: Icon(Icons.lightbulb_outline),
                      ),
                    ),
                  ),
                  Text('2500',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          )


        ),

      ),
    ),

      ],
    );
  }
}
