import 'package:flutter/material.dart';

class FourthHome extends StatelessWidget {
  const FourthHome({Key? key}) : super(key: key);

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
            physics: ClampingScrollPhysics(parent: NeverScrollableScrollPhysics()),
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
                            style: TextStyle(color: Colors.black, fontSize: 15.5),
                          ),
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
                                'Welcome Back!',
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
                                  'We have missed you. Enter your details below to conue enjoying our services.',
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
                          Row(mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            Text('Forgot my password'),
                          ],),
                        ],
                      ),),
                    SizedBox(height:25.0,),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                'Login to my account',
                                style: TextStyle(fontSize: 15.5, color: Colors.white),
                              ),
                            ),
                          ),
                          // SizedBox(height:40.0,),
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


