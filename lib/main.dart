import 'package:flutter/material.dart';

void main() => runApp(LamPage());

class LamPage extends StatefulWidget {
  LamPage({Key? key}) : super(key: key);

  @override
  State<LamPage> createState() => _LamPageState();
}

class _LamPageState extends State<LamPage> {
  @override
  Widget build(BuildContext context) {
    var luz = "bombilla.png";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.white],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text('Encender lampara',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 300),
              GestureDetector(
                onTap: () => {
                  setState(() {
                    if (luz == "bombillal.png") {
                      luz = "bombilla.png";
                    } else {
                      luz = "bombillal.png";
                    }
                    ;
                  })
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 45,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "power",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      radius: 50,
                    ), //CircleAvatar
                  ), //CircleAvatar
                ),
              ),
              SizedBox(height: 50),
              CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/img/' + luz))
            ],
            //CircleAvatar
          ), //Center
        ));
  }
}
