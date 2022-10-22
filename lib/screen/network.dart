// import 'package:ecommerce_shop/model.dart';
// import 'package:http/http.dart';

// class AllProductNetwork {
//   Future<List<EShopModel>> getAllProduct () async{
//     final response = await get(Uri.parse('https://api.escuelajs.co/api/v1/products'));

//     if(response.statusCode == 200){
//       print(response.body);
//       return eShopModelFromJson(response.body);
//     }else{
//       throw{
//         Exception(
//           'Failed to get data from API'
//         )
//       };
//     }
//   }
// }