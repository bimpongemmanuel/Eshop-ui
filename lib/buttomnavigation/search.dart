import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
    List<String>? homeCardSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();

   @override
     void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  boxApp(),


      body:_textEditingController!.text.isNotEmpty && homeCard.length == 0  ? Center(child: Text('no result found'),) : 
       ListView.builder(
        itemCount: _textEditingController!.text.isNotEmpty
                    ? homeCardSearch!.length
                    : homeCard.length,
        itemBuilder: (context, index) {
        return Text(_textEditingController!.text.isNotEmpty
                            ? homeCardSearch![index]
                            : homeCard[index]['name']);
    },),
    );
  }

  AppBar boxApp() {
    return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
   title: Padding(
     padding:  EdgeInsets.fromLTRB(10,10,10,0),
     child: TextField(
       controller: _textEditingController,
         focusNode: _textFocusNode,
       onChanged: (value) {
                  setState(() {
                    homeCardSearch = homeCard
                        .where(
                            (element) => element.contains(value.toLowerCase())).cast<String>()
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        homeCardSearch!.length == 0) {
                      print('foodListSearch length ${homeCardSearch!.length}');
                    }
                  });
                },
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: 'search',
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search,color: Colors.grey,),
        prefixIconColor: Colors.white,
        ),
     ),
   ),
   centerTitle: false,
   actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
   ],
  );
  }
}


// import 'package:flutter/material.dart';

// class HomeCard extends StatefulWidget {
//   @override
//   _HomeCardState createState() => _HomeCardState();
// }

// class _HomeCardState extends State<HomeCard> {
//   List<String> foodList = [
//     'Orange',
//     'Berries',
//     'Lemons',
//     'Apples',
//     'Mangoes',
//     'Dates',
//     'Avocados',
//     'Black Beans',
//     'Chickpeas',
//     'Pinto beans',
//     'White Beans',
//     'Green lentils',
//     'Split Peas',
//     'Rice',
//     'Oats',
//     'Quinoa',
//     'Pasta',
//     'Sparkling water',
//     'Coconut water',
//     'Herbal tea',
//     'Kombucha',
//     'Almonds',
//     'Peannuts',
//     'Chia seeds',
//     'Flax seeds',
//     'Canned tomatoes',
//     'Olive oil',
//     'Broccoli',
//     'Onions',
//     'Garlic',
//     'Carots',
//     'Leafy greens',
//     'Meat',
//   ];
//   List<String>? foodListSearch;
//   final FocusNode _textFocusNode = FocusNode();
//   TextEditingController? _textEditingController = TextEditingController();
//   @override
//   void dispose() {
//     _textFocusNode.dispose();
//     _textEditingController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             backgroundColor: Colors.blue.shade300,
//             title: Container(
//               decoration: BoxDecoration(
//                   color: Colors.blue.shade200,
//                   borderRadius: BorderRadius.circular(20)),
//               child: TextField(
//                 controller: _textEditingController,
//                 focusNode: _textFocusNode,
//                 cursorColor: Colors.black,
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     errorBorder: InputBorder.none,
//                     disabledBorder: InputBorder.none,
//                     hintText: 'Search here',
//                     contentPadding: EdgeInsets.all(8)),
//                 onChanged: (value) {
//                   setState(() {
//                     foodListSearch = foodList
//                         .where(
//                             (element) => element.contains(value.toLowerCase()))
//                         .toList();
//                     if (_textEditingController!.text.isNotEmpty &&
//                         foodListSearch!.length == 0) {
//                       print('foodListSearch length ${foodListSearch!.length}');
//                     }
//                   });
//                 },
//               ),
//             )),
//         body: _textEditingController!.text.isNotEmpty &&
//                 foodListSearch!.length == 0
//             ? Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(
//                           Icons.search_off,
//                           size: 160,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           'No results found,\nPlease try different keyword',
//                           style: TextStyle(
//                               fontSize: 30, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             : ListView.builder(
//                 itemCount: _textEditingController!.text.isNotEmpty
//                     ? foodListSearch!.length
//                     : foodList.length,
//                 itemBuilder: (ctx, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                           child: Icon(Icons.food_bank),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(_textEditingController!.text.isNotEmpty
//                             ? foodListSearch![index]
//                             : foodList[index]),
//                       ],
//                     ),
//                   );
//                 }));
//   }
// }

