import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title: const Text('MShop',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     centerTitle: false,
     leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    ),
    body: Column(
      children: [
        Expanded(
          child: GridView.count(crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [          
              SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://sneakersinc.co.za/wp-content/uploads/2022/04/P1-5-scaled.jpg'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://sneakersinc.co.za/wp-content/uploads/2022/04/P1-5-scaled.jpg'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://sneakersinc.co.za/wp-content/uploads/2022/04/P1-5-scaled.jpg'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://sneakersinc.co.za/wp-content/uploads/2022/04/P1-5-scaled.jpg'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 150,
                  width: 120,
                  child: Card(
                    child: Container(
                       height: 120,
                       width: 100,                  
                       decoration: BoxDecoration(
                           color: Colors.amber,
                        image: DecorationImage(image: NetworkImage('https://sneakersinc.co.za/wp-content/uploads/2022/04/P1-5-scaled.jpg'))
                       ),
                       child:  Text('data',textAlign: TextAlign.center,),
                    ),
                  ),
                ),
                
              
            
           
          ],
          ),
        )
      ],
    ),
    );
  }
}