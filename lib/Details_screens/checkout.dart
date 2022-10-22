import 'package:ecommerce_shop/Details_screens/details2.dart';
import 'package:ecommerce_shop/Details_screens/payment_sucessful.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xE1E43C08),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailsPage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 2,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Subtotal'), Text('GHC 150.99')],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('Delivery Fee'), Text('GHC 25.99')],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [ Text('Total'), Text('GHC 225.09')],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Select Payment Method'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Pay On Delivery'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Pay Via Momo'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0xE1E43C08)),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMade(),));
                          },
                          child: const Center(
                              child: Text('Confrim Payment',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )))),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
