import 'package:flutter/material.dart';
import 'package:rimo_test/widgets/cards.dart';

class DashboardScreen extends StatefulWidget {
  static String route = 'Dashboard';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/face.png'),
              ),
              SizedBox(
                width: width * 0.06,
              ),
              const Text('Hi Sade '),
              SizedBox(
                width: width * 0.45,
              ),
              Container(
                  child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notifications,
                  size: 27,
                  color: Color(0xffAC8BD3),
                ),
              ))
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          BalanceCard(),
          GetStartedCard(
            icon: 'assets/images/send.png',
            color: Color(0xffF8F3FF),
            text: 'Send Money',
          )
        ],
      ),
    )));
  }
}
