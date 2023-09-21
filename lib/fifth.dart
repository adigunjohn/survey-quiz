import 'dart:developer';

import 'package:flutter/material.dart';

class FifthHome extends StatelessWidget {
  const FifthHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 20.0, bottom: 25.0),
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
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.5),
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
                            color: Colors.grey.shade300,
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
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'What is your phone',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'number?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               SizedBox(height: 45.0,),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone_outlined,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Phone number',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 11.0,
                                ),
                                TextField(
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    prefixIcon: SizedBox(
                                        width: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 1.8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                          Icon(Icons.favorite),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            '+234',
                                            style: TextStyle(
                                              fontSize: 16,
                                                color: Colors.grey),
                                          ),
                                      ],
                                    ),
                                        ),),
                                  //   prefixIcon: Icon(Icons.favorite),
                                    hintText: 'your phone number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
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
                // SizedBox(height: 300.0,),
                Expanded(
                  flex: 4,
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
                            'Proceed',
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

//CustomTextField(
//                     keyboardType: TextInputType.number,
//                       maxLength: 10,
//                     fillColor: Colors.white,
//                     fieldStyle: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
//                     controller: ref.watch(authStateNotifierProvider.notifier).phone,
//                       prefixIcon: SizedBox(
//                         width: 80,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             const SizedBox(width: 10),
//                             SvgPicture.asset(
//                               'assets/svg_images/nigeriaFlag.svg',
//                             ),
//                             const SizedBox(width: 7),
//                             Icon(
//                               Icons.keyboard_arrow_down,
//                               color: Theme.of(context).primaryColor,
//                             ),
//                           ],
//                         ),
//                       ),
//                     hintText: 'Phone number'
//                   ),

//TextField(
//                               autofocus: true,
//                               keyboardType: TextInputType.number,
//                               // textAlign: TextAlign.center,
//                               style: TextStyle(color: Colors.green),
//                               decoration: InputDecoration(
//                                 prefixIcon: Row(
//                                   children: [
//                                     SizedBox(width: 6.0,),
//                                     Icon(Icons.favorite),
//                                     SizedBox(width: 3.0,),
//                                     Text('+234', style: TextStyle(color: Colors.grey.shade300),),
//                                     SizedBox(width: 6.0,),
//                                   ],
//                                 ),
//                                 hintText: 'phone number',
//                                 hintStyle: TextStyle(color: Colors.grey),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(13.0),
//                                   ),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(13.0),
//                                   ),
//                                   borderSide: BorderSide(color: Colors.grey, width: 1.5),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(
//                                     Radius.circular(19.0),
//                                   ),
//                                   borderSide: BorderSide(color: Colors.grey, width: 1.5),
//                                 ),
//                               ),
//                               onChanged: (value) {
//                                 log(value);
//                               },
//                             ),
