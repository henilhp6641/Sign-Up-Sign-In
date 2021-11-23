import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signupin/signin.dart';
import 'helper.dart';

class ScreenSignup extends StatefulWidget {
  @override
  _ScreenSignupState createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {

  String _selectedGender = 'male';

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: buildButton(),
          title: Text(
            "Sign up",
            style: textStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),

              buildText(name: "First Name:", choose: textStyle2),
              buildNameField(),
              buildText(name: "Last Name:", choose: textStyle2),
              buildNameField(),

              buildText(name: "Gender:", choose: textStyle2),
              buildRadio(),

              buildText(name: "Email:", choose: textStyle2),
              buildEmailField(),

              buildText(name: "Date of Birth:", choose: textStyle2),
              builddobField(),

              buildText(name: "Mobile no.:", choose: textStyle2),
              buildNoField(),

              buildText(name: "Password:", choose: textStyle2),
              buildPasswordField(),
              SizedBox(
                height: 25,
              ),
              buildCreateanAccount(),
              buildTaptoLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.grey),
            elevation: 15.0,
            minimumSize: Size(20, 50),
            primary: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {
          print("Icon Touch");
          setState(() {
            Navigator.pop(context);
          });
        },
        child: Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget buildNameField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 3),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Enter name",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }


  Widget buildRadio(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.grey[900],
            leading: Radio(
              value: 'male',
              groupValue: _selectedGender,
              onChanged: (value) {
                //setState(() {
                //_selectedGender = value;
                //});
              },
            ),
            title: Text('Male',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.grey[900],
            leading: Radio(
              focusColor: Colors.white,
              value: 'female',
              groupValue: _selectedGender,
              onChanged: (value) {
                //setState(() {
                  //_selectedGender = value;
                //});
              },
            ),
            title: Text('Female',style: TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
      ],
    );
  }

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 3),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pinkAccent),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "hello@signup.com",
            hintStyle: textStyle1,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }



  Widget buildNoField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 3),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Enter mobile number",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20))),

      ),
    );
  }

  Widget builddobField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 3),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Enter Date of Birth(DD/MM/YY)",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20))),

      ),
    );
  }

  Widget buildText({required String name, required TextStyle choose}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Text(
        name,
        style: choose,
      ),
    );
  }

  Widget buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 3),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Pick a strong password",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildCreateanAccount() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minimumSize: Size(500, 48),
            primary: Colors.purpleAccent[400]),
      ),
    );
  }

  Widget buildTaptoLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: textStyle1,
          ),
          SizedBox(
            width: 8,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenLogin()));
              },
              child: Text(
                "Log in",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

