import 'package:flutter/material.dart';
import 'package:input_form_user/components/reuseableTextFormField.dart';
import 'package:input_form_user/screens/show_display_sreen.dart';
import 'package:input_form_user/utilities/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? firstNameValue;
    final fullName = TextEditingController();
    final location = TextEditingController();
    final email = TextEditingController();
    final occupation = TextEditingController();
    final age = TextEditingController();
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
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/hng-logo.jpeg',
                      ),
                      radius: 70,
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    'Form Of Interest',
                    style: kTitleTextStyle,
                  ),
                  const SizedBox(height: 20.0),
                  ReuseableTextFormField(
                    controller: fullName,
                    hintText: 'first and last name',
                    labelText: 'Full Name',
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20.0),
                  ReuseableTextFormField(
                    controller: age,
                    hintText: 'how old are you?',
                    labelText: 'Age',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20.0),
                  ReuseableTextFormField(
                    controller: email,
                    hintText: 'email address',
                    labelText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20.0),
            ReuseableTextFormField(
              controller: location,
              hintText: 'current location',
              labelText: 'Location',
              keyboardType: TextInputType.text,
            ),
                  const SizedBox(height: 20.0),
                  ReuseableTextFormField(
                    controller: occupation,
                    hintText: 'what do you do',
                    labelText: 'Occupation',
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 30.0),
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
                            style: kButtonStyle,
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DisplayDetailsScreen(
                                  fullName: fullName.text,
                                  age: age.text.toString(),
                                  location: location.text,
                                  email: email.text,
                                  occupation: occupation.text,
                                ),
                              ),
                            );
                          }

                        },
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Text(
                      //   'Sponsored by:',
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      // SizedBox(
                      //   height: 8.0,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     Expanded(
                      //         flex: 3,
                      //         child: Image.asset('images/download.png')),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 3,
                      //         child: Image.asset('images/14g-logo.png')),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Expanded(
                      //         flex: 3,
                      //         child: Image.asset('images/brand-logo.png')),
                      //   ],
                      // ),
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


