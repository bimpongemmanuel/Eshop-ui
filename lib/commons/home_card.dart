
import 'package:flutter/material.dart';

Row homeCard2() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                          
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/t-shirt-design-template-096cfcbec61b2c43440782c3ae447f47_screen.jpg?ts=1612183823'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Desgin T-Shirt',textAlign: TextAlign.center,),
                          const Text('GHC 70'),
                        ],
                      ),
                    )),
                          SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                          
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://cdn.vox-cdn.com/thumbor/fqCAXAltnAptpBvjuvoHBDMVv3Q=/0x0:2040x1360/1000x1429/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/24023367/226266_APPLE_WATCH_8_SE_PHO_akrales_0562.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Apple watch SE'),
                          const Text('GHC 1,050'),
                        ],
                      ),
                    )),
                          SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                          
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://media.4rgos.it/i/Argos/5021-m0014-m007-m050-asym-m008-m022-mobilephoneguide-9521188-iphone-13promax?maxW=768&qlt=75&fmt.jpeg.interlaced=true'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Apple iPhone 13 pro-max'),
                          const Text('GHC 30,300'),
                        ],
                      ),
                    )),
             ],
           );
  }




  Row homeCard1() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://image.shutterstock.com/image-photo/beautiful-brown-leather-female-bag-260nw-1079711900.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Women\'s Handbag',textAlign: TextAlign.center,),
                          const Text('GHC 150'),
                        ],
                      ),
                    )),
                          SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: const Color(0xDFF0C0B2) ,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                          
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://static.nike.com/a/images/c_limit,w_400,f_auto/t_product_v1/6e65df20-a24d-45f3-a432-92dfd6816393/image.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Backpack'),
                          const Text('GHC 120'),
                        ],
                      ),
                    )),
                          SizedBox(
                    height: 180,
                    width: 130,
                    child: Card(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                          
                            decoration: const BoxDecoration(
                              image:  DecorationImage(image:  NetworkImage('https://m.media-amazon.com/images/I/61Xq6OFqzjL._AC_UL1500_.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          const Text('Unisex Sneakers'),
                          const Text('GHC 300'),
                        ],
                      ),
                    )),
             ],
           );
  }