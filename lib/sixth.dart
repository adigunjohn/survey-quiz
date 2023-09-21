import 'package:flutter/material.dart';

class SixthHome extends StatelessWidget {
  const SixthHome({Key? key}) : super(key: key);

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
                AspectRatio(
                  aspectRatio: 1.2,
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
