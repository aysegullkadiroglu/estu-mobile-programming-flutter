import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/customColors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColors.scaffoldBackgroundColor,
      appBar: AppBar(
          toolbarHeight: 60.0,
          backgroundColor: customColors.scaffoldBackgroundColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(fontFamily: 'TitanOne', fontSize: 23.0,
              fontWeight: FontWeight.w100),
          title: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 38, maxWidth: 200),
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  Icon(Icons.chat_outlined,),
                  Text(' CHAT',
                    style: TextStyle(fontSize: 23.0),)
                ],
              ),
            ),)
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _bodyChat(),
                SizedBox(
                  height: MediaQuery.of(context).size.height/8,
                )
              ],
            ),
            _formChat(),
          ],
        ),
      ),
    );
  }

  // chat = 0 : send
  // chat = 1 : received
  Widget _itemChat(
      {required int chat, required String message, time, color, String? name}) {
    return Row(
      mainAxisAlignment:
      chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: [
            Text(
              '$time',
              style: TextStyle(color: Colors.grey.shade500),),
            Text('$name',
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: customColors.textButtonColor),),
          ],
        ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/42.0,
            right: MediaQuery.of(context).size.width/42.0,
            top: MediaQuery.of(context).size.height/50.0),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: chat == 1 ? customColors.currencyConverterColor :
                customColors.scaffoldBackgroundColor,
              borderRadius: chat == 0
                  ? BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              )
                  : BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
                boxShadow: [
                  BoxShadow(
                      color: customColors.textButtonColor.withOpacity(0.2),
                      spreadRadius: 2.0,
                      blurRadius: 5.0,
                      offset: Offset(0, 3)),
                ]
            ),
            child: Text('$message', style: TextStyle(
              color: Colors.white70))
          ),
        ),
      ],
    );
  }

  Widget _formChat() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.width/3.49,
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          color: Colors.white,
          child: TextField(
            cursorColor: customColors.scaffoldBackgroundColor,
            decoration: InputDecoration(
              hintText: 'Type your message...',
              suffixIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey),
                padding: EdgeInsets.all(MediaQuery.of(context).size.height/70),
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              filled: true,
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: customColors.scaffoldBackgroundColor),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: customColors.customTextColor),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bodyChat() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            _itemChat(
              chat: 1,
              name: 'Kerem',
              message: 'Pardus kristal hüner yükselir ytd',
              time: '01:15',
            ),
            _itemChat(
              name: 'Zafer',
              chat: 1,
              message: '63 bine aldım Fantom 3.300 iken',
              time: '01:15',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'Borsa İstanbul`daki yatırımcı sayısı 3.976.598 kişi'
                  'seviyesine yükseldi. Bu hafta borsaya 86.500 yeni '
                  'yatırımcı gelmiştir.',
              time: '01:15',
            ),
            _itemChat(
              name: 'Zeynep',
              chat: 1,
              message: 'ama zafer devlet bankası dusurmezki bazen kendı alıyor '
                  'hıssesıni onun altını göstermıyor',
              time: '01:15',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message:
              'şu an 6.487',
              time: '01:15',
            ),
            _itemChat(
              name: 'İbrahim',
              chat: 1,
              message: 'Sen her ihtimale karşı 10 altını gir',
              time: '01:16',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'ibrahim yazacağınız önemli bilgiler bitti mi',
              time: '01:16',
            ),
            _itemChat(
              name: 'Şeyda',
              chat: 1,
              message: 'İbo birde aceleci olma alırken satarken kar '
                  'almadan okeymiyiz',
              time: '01:17',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'tm ömer',
              time: '01:17',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'hala uykunmu geldi sen git yat pazartesi'
                  'deriz biley olursa 😃',
              time: '01:17',
            ),
            _itemChat(
              name: 'Kaan',
              chat: 1,
              message: 'Kelebek 15 halka arz var bunların 5 6 sı baba arz '
                  'her arzdan iki gün önce borsa düşer',
              time: '01:18',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'Hafif hareketlenmeler var gibi lakin Euro yu '
                  'dengeleyip sonra geçip 23 leri görmesini bekliyorum',
              time: '01:18',
            ),
            _itemChat(
              name: 'Emrecan',
              chat: 1,
              message: 'teşekkürler',
              time: '01:18',
            ),
            _itemChat(
              name: 'Siz',
              chat: 0,
              message: 'Arkadaşlar japon yeni 7 gün içinde TL karşında '
                  '52 kurş deger kazandı dolar karşında ise 50 kurş deger kazandı. '
                  'Geçan hafta bir şey dedim sepeti karışık tutan kazanır örnek 1880 '
                  'dolar alan biri hava aldı oysa sepete japon yeni olsaydı '
                  'örnek 100 bin dolarına 50 bin TL kazançlı olacaktı 😂🤩🤩',
              time: '01:30',
            ),
            _itemChat(
              name: 'Büşra',
              chat: 1,
              message: 'Buffet amcam der ki; "Birinci kural, asla para'
                  'kaybetmeyin. Kural iki, birinci kuralı asla unutmayın.',
              time: '01:32',
            ),
            _itemChat(
              name: 'Enes',
              chat: 1,
              message: '300 tane bile verse 37. 500 yapar o da 10 tavan yapsa'
                  '90.000 falan yapar',
              time: '01:33',
            ),
          ],
        ),
      ),
    );
  }
}
