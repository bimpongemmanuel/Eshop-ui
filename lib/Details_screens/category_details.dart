import 'package:ecommerce_shop/commons/cat_list.dart';
import 'package:flutter/material.dart';

class CatDetails extends StatelessWidget {
  const CatDetails({super.key,this.categoryDetails});
    final categoryDetails;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0.0,
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: catList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
       itemBuilder: (context, index) {
        return SizedBox(height: 220,
        child: Card(),
        );
      },),
    );
  }
}