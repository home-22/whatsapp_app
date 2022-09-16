import 'package:flutter/cupertino.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    child: ClipRect(
                      child: Image.asset(
                        'images/user1.png',
                        height: 55,
                        width: 55,
                      ), //status1
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
