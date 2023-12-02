import 'package:flutter/material.dart';
import '../utils/customColors.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColors.scaffoldBackgroundColor,
      appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: customColors.scaffoldBackgroundColor,
          centerTitle: true,
          titleTextStyle: const TextStyle(fontFamily: 'TitanOne', fontSize: 21.0,
              fontWeight: FontWeight.w100),
          title: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 35, maxWidth: 200),
            child: const Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
                  Icon(
                    Icons.currency_exchange_outlined,
                    size: 25.0,),
                  Center(child: Text(' CONVERTER'))
                ],
              ),
            ),)
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            _buildCurrencyView('assets/usa_flag.jpg', 'USA', 'USD', '\$', '1.0'),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: customColors.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: customColors.currencyConverterColor.withOpacity(0.3),
                        spreadRadius: 2.0,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: const Center(
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: customColors.customTextColor),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  // width: 50.0,
                  decoration: BoxDecoration(
                      color: customColors.scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: customColors.currencyConverterColor.withOpacity(0.3),
                          spreadRadius: 2.0,
                          blurRadius: 5.0,
                          offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.swap_vert_rounded,
                          size: 30.0,
                          color: customColors.customTextColor,
                        ),
                        Text(
                          '    Switch Currencies',
                          style: TextStyle(
                            color: customColors.customTextColor,
                            fontSize: 17.0, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0,),
            _buildCurrencyView('assets/turkey_flag.png', 'TURKEY', 'TUR', '₺',
                '18.79'),
          ],
        ),
      )
    );
  }

  Container _buildCurrencyView(String image, name, currency, symbol, text) {
    return Container(
    height: 150.0,
      decoration: BoxDecoration(
        color: customColors.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: customColors.currencyConverterColor.withOpacity(0.3),
            spreadRadius: 2.0,
            blurRadius: 4.0,
            offset: Offset(0, 3),
          )],
      ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      image,
                      width: 35.0,
                      height: 50.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(name,style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text(currency,
                          style: const TextStyle(
                            color: customColors.customTextColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right,
                  color: customColors.customTextColor,)
                ],
              ),
              TextFormField(
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,
                color: customColors.customTextColor),
                cursorColor: customColors.currencyConverterColor,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColors.currencyConverterColor,),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: customColors.customTextColor),
                  ),
                  hintText: text,
                  hintStyle: TextStyle(fontSize: 20.0,
                  color: customColors.textButtonColor,
                  fontWeight: FontWeight.bold),
                  suffixIcon: Text(
                    symbol,
                    style: TextStyle(fontSize: 20.0, color: customColors.customTextColor,),
                  ),
                  suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 15)
                ),
              )
            ],
          ),
        )
    );
  }
}
