
import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:ecommerce_shop/commons/home_card.dart';
import 'package:ecommerce_shop/commons/list2.dart';
import 'package:ecommerce_shop/commons/carousel_slider.dart';
import 'package:ecommerce_shop/model.dart';
import 'package:ecommerce_shop/screen/network.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final AllProductNetwork _allProductNetwork = AllProductNetwork();

    Future<List<EShopModel>>? getProduct;

      @override
  void initState() {
    getProduct = _allProductNetwork.getAllProduct();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            myCarouselSlider(context),
            const SizedBox(height: 10,),
            
             GestureDetector(child: homeCard1(),
             onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WomenBags()));
             },
              ),
      
            homeCard2(),
      
             const SizedBox(height: 10,),
      
             const Text('Latest Items',style:  TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20)),

             FutureBuilder<List<EShopModel>>(
              future: getProduct,
              builder: (context,
              AsyncSnapshot<List<EShopModel>>snapshot) {
               if(snapshot.hasData){
                return
             GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount:snapshot.data!.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
               return ProductCard(
                allProducts: snapshot.data![index],
               );
             },);
               }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
               }
             },)
      
          ],
        ),
      )
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title: const Text('MShop',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     centerTitle: false,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    );
  }
}

class ProductCard extends StatelessWidget {
   ProductCard({
    Key? key,
     this.allProducts
  }) : super(key: key);


  EShopModel? allProducts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 120,
     width:120,
     child: Card(                 
       child: Container(decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(allProducts!.category!.image!)
       )),
     )));
  }
}