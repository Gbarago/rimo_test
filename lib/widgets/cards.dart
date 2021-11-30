import 'package:flutter/material.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

bool toggleEye = false;

class _BalanceCardState extends State<BalanceCard> {
  void togglevisibility() {
    setState(() {
      toggleEye != toggleEye;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff7245AD), borderRadius: BorderRadius.circular(15)),
        height: height * 0.155,
        width: width * 0.85,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  toggleEye ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                  size: 15,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            'primarry Wallet',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Text(
            'NGN 200,000',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add Cash',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class GetStartedCard extends StatelessWidget {
  const GetStartedCard(
      {Key? key, required this.icon, required this.text, this.color})
      : super(key: key);
  final String text;
  final icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(icon),
          ),
          Text(text),
        ],
      ),
    );
  }
}
