import 'package:flutter/material.dart';

class DialogCustom {
  void load(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
//widget shown according to the state
          child: Center(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: CircularProgressIndicator(
                backgroundColor: Colors.black87,
                color: Colors.redAccent,
              ),
            ),
          ),
        );
      },
    );
  }
}
