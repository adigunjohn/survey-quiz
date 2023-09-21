import 'package:flutter/material.dart';

class SecondHome extends StatelessWidget {
  const SecondHome ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding:
            const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 60.0),
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
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Become a seller with',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'just a few steps!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Join us as a seller and start selling your services to customers in your area with just a few easy steps.',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(child: Image.asset('images/onboardingsample.png', scale: 1,),),
                ),
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
                      'Continue',
                      style: TextStyle(fontSize: 15.5, color: Colors.white),
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
