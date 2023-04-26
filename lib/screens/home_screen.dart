import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xff134cc4),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              color: Color(0xfffedeeef),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Spending Breakdown',
                      style: TextStyle(
                          fontSize: 27,
                          color: Color(0xff102c5a),
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          _Card(),
                          SizedBox(height: 30),
                          _Card(),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          _Card(),
                          SizedBox(height: 30),
                          _Card(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff6dd0f1),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.graphic_eq_outlined,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card_sharp,
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              label: ''),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    super.key,
    this.title,
    this.amount,
  });

  final String? title;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(18)),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "Food & Bav.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff78869b),
              ),
            ),
            Text(
              amount ?? "\$98",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0c2656)),
            )
          ],
        )
      ],
    );
  }
}
