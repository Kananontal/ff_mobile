import 'package:ff_mobile/backend/database.dart';
import 'package:ff_mobile/config/constant.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
          backgroundColor: sColor,
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtPassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Name',
          icon: Icon(Icons.pedal_bike),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.length < 6) {
            return 'กรุณากรอกข้อมูลมากกว่า 6 ตัวอักษร';
          }
        },
        onSaved: (value) {
          name = value;
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Surname',
          icon: Icon(Icons.approval),
          hintText: 'Input your Surname',
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกข้อมูล';
          } else if (value.length < 3) {
            return 'กรุณากรอกข้อมูลมาากกว่า 3 ตัว';
          }
        },
        onSaved: (value) {
          surname = value!.trim();
        },
      ),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email),
          hintText: 'Input your email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (!(value!.contains('@'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมลด้วย';
          } else if (!(value.contains('.'))) {
            return 'กรุณากรอกข้อมูลตามรูปแบบอีเมลด้วย';
          }
        },
        onSaved: (value) {
          email = value;
        },
      ),
    );
  }

  Widget txtPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
          hintText: 'Input your password',
        ),
        obscureText: true,
        onSaved: (value) {
          password = value;
        },
      ),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
      child: Text('Submit'),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          var local = LocalDB();
          local.Register(name, surname, email, password);
          Navigator.pushNamed(context, 'login');
        }
      },
    );
  }
}
