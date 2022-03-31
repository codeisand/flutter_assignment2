// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InputValid extends StatelessWidget {
  InputValid({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Input & validation ',
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter Email ID",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Email can't be empty";
                    } else if (val.length < 5) {
                      return "can't be less than 5";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Enter Age",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Age can't be empty";
                    } else if (val.length > 2) {
                      return "can't be more than 3 digits";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Enter Phone Number",
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Phone number can't be empty";
                    } else if (val.length > 10) {
                      return "can't be more than 11";
                    } else if (val.length < 10) {
                      return "can't be less than 9";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.pop(context);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
