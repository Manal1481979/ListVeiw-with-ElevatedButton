import 'package:flutter/material.dart';
//import './ItemsView.dart';
class BbuttomSheet extends StatefulWidget{
  final Function (String id,String arabicWord,String englishWord)addItem;
  const BbuttomSheet(this.addItem, {Key? key}):super(key:key);
  
  @override
  _BbuttomSheetState createState() => _BbuttomSheetState();
}

class _BbuttomSheetState extends State<BbuttomSheet> {
  var _titleArabic=TextEditingController() ;
  var _titleEnglish=TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(children: [
          TextField(decoration: InputDecoration(labelText: 'English Text'),controller: _titleArabic ,   ),
          TextField(decoration: InputDecoration(labelText: 'Arabic Text'),controller:_titleEnglish    ),
          
                   ElevatedButton(onPressed:() { Navigator.pop(context);
                     widget.addItem(
                       DateTime.now().toString(),
                       _titleEnglish.text,
                       _titleArabic.text
                       );
                       },
                   child: Text('Add Item'),
                                 ) 
          //ElevatedButton(onPressed: (),{
             //widget.addItem(DateTime.now().toString(),_titleEnglish.text,_titleEnglish.text);
            // }
            // ) 
           
          //widget.addItem(_titleEnglish.text,_titleEnglish.text);
        ]
        
        ),
        
        
                                  )
                                  
    );
                              }
}
//}