import 'package:flutter/material.dart';
import 'package:rewardapp/Screens/Listview_challenges.dart';
import 'package:rewardapp/Screens/Listview_popular.dart';
import 'package:rewardapp/Screens/Listview_rewards.dart';

class HomePage extends StatelessWidget {

  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            backgroundColor: Colors.white,
            onTap: (index) {

            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME'),
              BottomNavigationBarItem(icon: Icon(Icons.star),label: 'REWARDS'),
              BottomNavigationBarItem(icon: Icon(Icons.auto_graph),label: 'CHALLENGES'),

            ],
          ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage('Images/vishal.1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Hi,Vishal',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Balance'),
                    SizedBox(
                      height: 39,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(20)

                        ),
                        child: Row(
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
                            Text('25000',style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: ListviewReward()),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7.0, 1.0, 2.0, 1.0),
              child: Row(
                children: [

                  Text('Popular Rewards',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(135.0, 1.0, 1.0, 1.0),
                    child: Text('See all  >',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
                children: [
                  Expanded(child: ListviewPopular()),
                ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Popular Challenges',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 106),
                  child: Text('See all >',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: ListviewChallenges())
              ],
            ),
          ],
        ),

      ),
    );
  }
}
