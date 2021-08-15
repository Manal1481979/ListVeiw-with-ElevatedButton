//import 'dart:js';

import 'package:flutter/material.dart';
import 'Item.dart';
import './buttom_sheet.dart';
// 4 create home page
class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) :super(key:key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  List<Item> itemsList = [Item('1', 'dd', 'ee'), Item('2', 'vv', 'gg')];
   void removeItem( String id)=>  itemsList.removeWhere((element) => element.id==id);
   void addItem(String id,String arabicWord,String englishWord){
     setState(() {
        itemsList.add(Item(id, arabicWord, englishWord));
     });
     
   }
   void openBuliderSheet(){
     showModalBottomSheet(context: context, builder: (ctx){
       return BbuttomSheet(addItem);
                                                            
     });
                           }

  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text('My Sales'),),
        body: ListView.builder(
          itemCount:itemsList.length,
          itemBuilder  : (context,index){
               return ListTile(

                 title: Text(itemsList[index].englishWord),
                 subtitle: Text(itemsList[index].arabicWord),
                 trailing: IconButton(
                   onPressed:(){setState(() {
                     removeItem(itemsList[index].id);
                   });
                     
                     } ,
                   icon: Icon(
                     Icons.delete,
                     color  : Colors.red,
                     )
                 
               ),
                                    );                     }
               ),
            floatingActionButton: FloatingActionButton(onPressed:openBuliderSheet,child:Icon(Icons.add),
                 ),
                 );


                                       } 
}
                                 
                               