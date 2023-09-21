import 'package:flutter/material.dart';

class ThirdHome extends StatelessWidget {
  const ThirdHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            // physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 25.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        // locator<AppRouter>().router.pop();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
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
                                style: TextStyle(color: Colors.black, fontSize: 15.5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width/7,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(width: 3.0,),
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width/7,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(width: 3.0,),
                              Container(
                                height: 4.0,
                                // width: 50.0,
                                width: MediaQuery.sizeOf(context).width/7,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Join Renda Today🥰',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 33,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Choose services that you will need or that you\'re interested in from the list below.',
                                  style: TextStyle(color: Colors.grey, fontSize: 15),
                                ),
                              ),
                              SizedBox(width: 50,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined, color: Colors.grey,),
                                SizedBox(width: 5.0,),
                                Text('Full name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),)
                              ],
                            ),
                            SizedBox(height: 11.0,),
                            TextField(
                        // keyboardType: TextInputType.number,
                        // textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Firstname lastname',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                            borderSide: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(19.0),
                            ),
                            borderSide: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.email_outlined, color: Colors.grey,),
                                SizedBox(width: 5.0,),
                                Text('Email address', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),)
                              ],
                            ),
                            SizedBox(height: 11.0,),
                            TextField(
                        // keyboardType: TextInputType.number,
                        // textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Your email address',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13.0),
                            ),
                            borderSide: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(19.0),
                            ),
                            borderSide: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lock_outline_rounded, color: Colors.grey,),
                                SizedBox(width: 5.0,),
                                Text('Password', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),)
                              ],
                            ),
                            SizedBox(height: 11.0,),
                            TextField(
                              // keyboardType: TextInputType.number,
                              // textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Your password',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13.0),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(19.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.grey, width: 1.5),
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ],
                    ),),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                'Sign me up',
                                style: TextStyle(fontSize: 15.5, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Text('Login to my account',style: TextStyle(color: Colors.black, decoration: TextDecoration.underline), textAlign: TextAlign.center,),
                          SizedBox(height: 30.0,),
                          Column(
                            children: [
                              Text('By proceeding to register you agree to our',style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
                              Text('terms of service.',style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


