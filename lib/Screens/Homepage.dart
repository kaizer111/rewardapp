import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 20,
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage('Images/vishal.1.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hi,Vishal',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Balance'),
                  SizedBox(
                    height: 39,
                    width: 80,
                    child: Row(
                      children: [
                        Icon(Icons.lightbulb_outline),
                        Text('25509')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
