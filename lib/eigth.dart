import 'package:flutter/material.dart';

class EigthHome extends StatelessWidget {
  const EigthHome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:
            const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 60.0),
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
                        Icons.close_outlined,
                        color: Colors.black,
                        size: 14.5,
                      ),
                      // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        'Close',
                        style: TextStyle(color: Colors.black, fontSize: 15.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Tier 1 registration',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'complete, Oluwatobi!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'You are now one step closer to unlocking all the exciting featuresour app has to offer.',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 22,
                                child: Icon(Icons.safety_check_sharp,color: Colors.green,size: 28,),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Help make Renda', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 6.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('more secure for you', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.black38,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.verified_outlined, color: Colors.white, size: 16,),
                                         SizedBox(width: 4.0,),
                                         Text('NIN Verification', style: TextStyle(color: Colors.white,fontSize: 14.0),),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color: Colors.white,size: 12,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.5,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: Colors.black38,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.location_on_outlined, color: Colors.white,size: 16,),
                                          SizedBox(width: 4.0,),
                                          Text('Address Verification', style: TextStyle(color: Colors.white,fontSize: 14.0),),
                                        ],
                                      ),
                                      Icon(Icons.arrow_forward_ios, color: Colors.white,size: 12,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
