import 'package:eticket/services/services.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Sign Up"),
                onPressed: () async{
                  SignInSignUpResult result =await AuthServices.signUp("anommhmmd@gmail.com", "kurakura11", "Anom mhmmd",["action", "drama"], "Indonesia");

                  if (result.user == null) {
                    print(result.massage);
                  } else {
                    print(result.user.toString());
                  }
                })
            ],)
        ),
      ),
    );
}
}

