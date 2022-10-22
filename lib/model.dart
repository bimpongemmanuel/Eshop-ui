// // To parse this JSON data, do
// //
// //     final eShopModel = eShopModelFromJson(jsonString);

// // ignore_for_file: constant_identifier_names

// import 'dart:convert';

// List<EShopModel> eShopModelFromJson(String str) => List<EShopModel>.from(json.decode(str).map((x) => EShopModel.fromJson(x)));

// String eShopModelToJson(List<EShopModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class EShopModel {
//     EShopModel({
//         this.id,
//         this.title,
//         this.price,
//         this.description,
//         this.category,
//         this.images,
//         this.categoryId,
//     });

//     int? id;
//     String? title;
//     int? price;
//     String? description;
//     Category? category;
//     List<String>? images;
//     int? categoryId;

//     factory EShopModel.fromJson(Map<String, dynamic> json) => EShopModel(
//         id: json["id"],
//         title: json["title"],
//         price: json["price"],
//         description: json["description"],
//         category: Category.fromJson(json["category"]),
//         images: List<String>.from(json["images"].map((x) => x)),
//         categoryId: json["categoryId"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "price": price,
//         "description": description,
//         "category": category!.toJson(),
//         "images": List<dynamic>.from(images!.map((x) => x)),
//         "categoryId": categoryId,
//     };
// }

// class Category {
//     Category({
//         this.id,
//         this.name,
//         this.image,
//         this.keyLoremSpace,
//     });

//     int? id;
//     Name? name;
//     String? image;
//     KeyLoremSpace? keyLoremSpace;

//     factory Category.fromJson(Map<String, dynamic> json) => Category(
//         id: json["id"],
//         name: nameValues.map![json["name"]],
//         image: json["image"],
//         keyLoremSpace: json["keyLoremSpace"] == null ? null : keyLoremSpaceValues.map![json["keyLoremSpace"]],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": nameValues.reverse![name],
//         "image": image,
//         "keyLoremSpace": keyLoremSpace == null ? null : keyLoremSpaceValues.reverse![keyLoremSpace],
//     };
// }

// enum KeyLoremSpace { FASHION, RANDOM, FURNITURE }

// final keyLoremSpaceValues = EnumValues({
//     "fashion": KeyLoremSpace.FASHION,
//     "furniture": KeyLoremSpace.FURNITURE,
//     "random": KeyLoremSpace.RANDOM
// });

// enum Name { SHOES, CLOTHES, OTHERS, FURNITURE, ELECTRONICS }

// final nameValues = EnumValues({
//     "Clothes": Name.CLOTHES,
//     "Electronics": Name.ELECTRONICS,
//     "Furniture": Name.FURNITURE,
//     "Others": Name.OTHERS,
//     "Shoes": Name.SHOES
// });

// class EnumValues<T> {
//     Map<String, T>? map;
//     Map<T, String>? reverseMap;

//     EnumValues(this.map);

//     Map<T, String>? get reverse {
//         if (reverseMap == null) {
//             reverseMap = map!.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;

        
//     }
// }
