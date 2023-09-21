import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class SeventhHome extends StatelessWidget {
  const SeventhHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // FocusScopeNode currentFocus = FocusScope.of(context);
    // currentFocus.hasPrimaryFocus;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 20.0, bottom: 25.0),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 0.9,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              // locator<AppRouter>().router.pop();ad
                            },
                            child: const Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.black,
                                  size: 12.2,
                                ),
                                // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  'Go back',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.5),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(
                                width: 3.0,
                              ),
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Enter verification code',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 33,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'We sent a 4-digit code to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  '+234 818 928 4442.',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Enter the code below to verify your number.',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 27.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            OTPTextField(
                              onChanged: (String code){},
                              length: 4,
                              width: MediaQuery.of(context).size.width / 1.25,
                              fieldWidth: 50,
                              style: TextStyle(),
                              textFieldAlignment: MainAxisAlignment.spaceBetween,
                              fieldStyle: FieldStyle.box,
                              otpFieldStyle: OtpFieldStyle(
                                focusBorderColor: Colors.grey,
                                enabledBorderColor: Colors.grey,
                              ),
                              onCompleted: (pin) async {},
                            ),
                            SizedBox(
                              // height: 40.0,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Change number',
                                  style: TextStyle(
                                      fontSize: 15,
                                      decoration:
                                          TextDecoration.underline),
                                ),
                                MaterialButton(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                                  color: Colors.blue.shade100,
                                  onPressed: () {},
                                  child: Text(
                                    'Resend code',
                                    style:
                                        TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: MaterialButton(
                          elevation: 0,
                          onPressed: () {},
                          child: Text(
                            ' Verify phone number',
                            style:
                                TextStyle(fontSize: 15.5, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
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


