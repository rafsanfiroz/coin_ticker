import 'package:flutter/material.dart';
import 'test_style.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

String selectedCurrency = 'USD';

 List<DropdownMenuItem<String>> getDropdown(){
   List<DropdownMenuItem<String>> dropdownItem =[];
  for (String currency in currenciesList){
   var newItem = DropdownMenuItem(
     child: Text(currency) ,
     value: currency
   );
   dropdownItem.add(newItem);
  }
  return dropdownItem;


}


class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Coin Ticker',style:kAppbarText)),

      ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color : Colors.blueAccent ,
               elevation: 5.0,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),

               ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Center(child: Text('1 BTC = ? USD',
                 textAlign: TextAlign.center,
                 style: KCardText,


               ),
               ),
             ),
           )

           ),
        Container(
          height: 150.0,
          alignment: Alignment.center,
          padding: EdgeInsets.only(bottom: 30.0),
          color: Colors.blueAccent,

         child:DropdownButton<String>(
           value: selectedCurrency,
           items: getDropdown(),
           onChanged: (String? value) {
             setState(() {
               selectedCurrency =value!;
             });


           },


         )

         )

         ],

       ),

    );
  }
}


