import 'package:ecommerce_shop/Details_screens/details_page.dart';
import 'package:ecommerce_shop/commons/home_card.dart';
import 'package:ecommerce_shop/commons/list2.dart';
import 'package:ecommerce_shop/commons/carousel_slider.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:ecommerce_shop/commons/mysearch.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //  final AllProductNetwork _allProductNetwork = AllProductNetwork();

  // Future<List<EShopModel>>? getProduct;

  //     @override
  // void initState() {
  //   getProduct = _allProductNetwork.getAllProduct();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final icon = Provider.of<Cartprovider>(context);
    return Scaffold(
        appBar: homeAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myCarouselSlider(context),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: homeCard.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 200,
                    width: 130,
                    child: GestureDetector(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                 
                                  Container(
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: NetworkImage(homeCard[index]['img']),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                   Positioned(
                                    left: 130.0,
                                    top: 0.0,
                                    child: 
                                        IconButton(onPressed: (){
                                        
                                        }, icon: Icon(MdiIcons.heartOutline,color:Colors.red)),
                                  ),
                                ],
                              ),
                              Text(homeCard[index]['name'],style: TextStyle(fontSize: 20),),
                              SizedBox(height: 5,),
                              Text(homeCard[index]['price']),
                            ],
                          ),
                        ),
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              productDetails: homeCard[index],
                            ),
                          )),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: const Text(
        'MShop',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MySearch()),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_border_outlined,
              color: Colors.white,
            )),
      ],
    );
  }
}

// class ProductCard extends StatelessWidget {
//    ProductCard({
//     Key? key,
//      this.allProducts
//   }) : super(key: key);

// EShopModel? allProducts;
