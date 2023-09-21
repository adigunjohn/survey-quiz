import 'dart:developer';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0, right: 15.0, left: 15.0),
        child: FloatingActionButton.extended(
          elevation: 0,
          label: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(child: Text('Continue', style: TextStyle(fontSize: 15.5),))),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.lightBlue,
          // backgroundColor: Colors.lightBlue.shade300,
          onPressed: () {
            log('floating button tapped');
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GestureDetector(
            onTap: (){
              // locator<AppRouter>().router.pop();
              Navigator.pop(context);
            },
            child: const Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey,size: 12.2,),
                // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
                SizedBox(width: 6.0,),
                Text('Go back', style: TextStyle(color: Colors.black, fontSize: 15.5),),
              ],
            ),
          ),
        ),
        leadingWidth: 150,
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 17.0, right: 15.0, left: 15.0, bottom: 150.0),
            child: Container(
              // height: MediaQuery.sizeOf(context).height * 1.3,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Make your choices', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),),
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Row(
                        children: [
                          Expanded(child: Text('Choose services that you\'ll need or that you are interested in from the list below.', style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 50,)
                        ],
                      ),
                    ],),
                  SizedBox(height: 30,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Onsite services', style: TextStyle(color: Colors.green, fontSize: 15.75),),
                      Row(
                        children: [
                          Text('Remote services', style: TextStyle(color: Colors.grey, fontSize: 15.75),),
                          Icon(Icons.keyboard_double_arrow_down_rounded, color: Colors.grey, size: 18.0,)
                        ],
                      ),
                    ],),
                  SizedBox(height: 6.0,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          OnsiteServicesCardd(text: 'Plumbing'),
                          OnsiteServicesCardd(text: 'Cleaning'),
                          OnsiteServicesCardd(text: 'Painting'),
                        ],),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnsiteServicesCardd(text: 'Catering/personal chef'),
                            OnsiteServicesCardd(text: 'Home repair/maintainance'),
                            OnsiteServicesCardd(text: 'Interior design'),
                          ],),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnsiteServicesCardd(text:  'Barbing'),
                            OnsiteServicesCardd(text: 'Home massage'),
                            OnsiteServicesCardd(text:  'Hair dressing'),
                          ],),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Remote services', style: TextStyle(color: Colors.green, fontSize: 15.75),),
                      Row(
                        children: [
                          Text('Onsite services', style: TextStyle(color: Colors.grey, fontSize: 15.75),),
                          Icon(Icons.keyboard_double_arrow_up_rounded, color: Colors.grey, size: 18.0,)
                        ],
                      ),
                    ],),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnsiteServicesCardd(text: 'Plumbing'),
                            OnsiteServicesCardd(text: 'Cleaning'),
                            OnsiteServicesCardd(text: 'Painting'),
                          ],),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnsiteServicesCardd(text: 'Catering/personal chef'),
                            OnsiteServicesCardd(text: 'Home repair/maintainance'),
                            OnsiteServicesCardd(text: 'Interior design'),
                          ],),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OnsiteServicesCardd(text:  'Barbing'),
                            OnsiteServicesCardd(text: 'Home massage'),
                            OnsiteServicesCardd(text:  'Hair dressing'),
                          ],),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



/// Onsite & Remote Services Card
class OnsiteServicesCardd extends StatelessWidget {
  const OnsiteServicesCardd({required this.text,Key? key}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          // print(MediaQuery.sizeOf(context).height);
          print('Card Tappped');
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 5.0, right: 5.0, left: 5.0),
          child: Container(
            // padding: const EdgeInsets.only(bottom: 20.0, top: 20.0, right: 20.0, left: 20.0),
            // padding: const EdgeInsets.only(bottom: 20.0, top: 20.0, right: 20.0, left: 20.0),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 25.0,
                    ),
                    const SizedBox(height: 8.0,),
                    SizedBox(height: 30,
                        child: Center(child: Text('$text', textAlign: TextAlign.center, style: TextStyle(fontSize: 14),))),
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