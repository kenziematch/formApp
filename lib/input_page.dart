import 'package:flutter/material.dart';
import 'package:input_form_user/show_display_sreen.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? firstNameValue;
    final fullName = TextEditingController();
    final location = TextEditingController();
    final email = TextEditingController();
    final occupation = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: CircleAvatar(backgroundImage :  AssetImage('images/hng-logo.jpeg',),
                    radius: 70,),
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    'Form Of Interest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0, fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    controller: fullName,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'First and Last Name',
                      labelText: "FullName", labelStyle: TextStyle(fontSize: 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'FullName is required';
                      }
                    },
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    controller: location,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Current Location',
                      labelText: "Location", labelStyle: TextStyle(fontSize: 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Last Name is required';
                      }
                    },
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: "Email", labelStyle: TextStyle(fontSize: 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                    },
                  ),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    controller: occupation,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Occupation',
                      labelText: "Occupation", labelStyle: TextStyle(fontSize: 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                          color: Color(0xFF05B0FF),
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Occupation is required';
                      }
                    },
                  ),
                  const SizedBox(height: 50.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF05B0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              color: Color(0xFF05B0FF),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DisplayDetailsScreen(
                                  fullName: fullName.text,
                                  location: location.text,
                                  email: email.text,
                                  occupation: occupation.text,
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
