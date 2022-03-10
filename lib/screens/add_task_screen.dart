import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                    ),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide:
                    //       BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                    // ),
                    hintText: 'Enter short description'),
              ),
            ),
            Container(
              width: 700.0,
              padding: EdgeInsets.only(top: 40.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                ),
                onPressed: () {},
                child: Text(
                  'Add task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
