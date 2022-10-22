import 'package:ecommerce_shop/Details_screens/checkout.dart';
import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     centerTitle: false,
     leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const WomenBags(),));
     }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
   
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,  
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Card(
                // color: Colors.amber,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                              // image: DecorationImage(image: NetworkImage('url'),fit: BoxFit.cover)
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'GHC 150.99',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'blue, uk:42',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sporty sneaker (Men)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.restore_from_trash_outlined,
                              color: Color(0xE1E43C08),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Remove',
                              style: TextStyle(color: Color(0xE1E43C08)),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.remove,
                              color: Color(0xE1E43C08),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('1'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add,
                              color: Color(0xE1E43C08),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xE1E43C08)),
                              onPressed: () {},
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xE1E43C08)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOut(),));
                                },
                                child: const Center(
                                    child: Text('Checkout',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
