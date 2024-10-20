import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';



class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
        return 
        Column(
          children: [
            ExpansionTile(
              minTileHeight: 24,
              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
                          collapsedBackgroundColor: 
                             white,
                          backgroundColor: white,
                              collapsedTextColor:  Colors.black,
                          textColor:  Colors.black,
                          leading:Image.asset("assets/icons/language_icon.png", width: 24, height: 24,),
                        title: Text("اللغة"),
                        controlAffinity: ListTileControlAffinity.trailing,
                        children: <Widget>[
                           TextButton(
                              onPressed: () {
                               
                              },
                              child: Text(
                               "اللغة العربية", style: TextStyle(color:  Colors.black))
                              ),
                           TextButton(
                              onPressed: () {
                                
                              },
                              child: Text(
                              "اللغة الإنجليزية", style: TextStyle(color:  Colors.black))
                              ),
                           TextButton(
                              onPressed: () {
                              
                              },
                              child: Text(
                                " اللغة الفرنسية", style: TextStyle(color:  Colors.black))
                              ),    
                                 
                        ],
                      ),
         
           Divider(
            thickness:2 ,
            endIndent: 4,
            indent: 4,
            color: dividercolor.withOpacity(0.5),
          ),            
          ],
        );
     
  }
}