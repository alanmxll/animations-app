import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Welcome, Alan!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120.0,
              height: containerGrow.value * 120.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: containerGrow.value * 35.0,
                height: containerGrow.value * 35.0,
                margin: EdgeInsets.only(left: 80.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0),
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: containerGrow.value * 15.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
