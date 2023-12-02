import 'package:bim493_project/utils/customColors.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  late Widget _child;

  @override
  void initState() {
    _child = const ExplorePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColors.scaffoldBackgroundColor,
      appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: customColors.scaffoldBackgroundColor,
          centerTitle: true,
          titleTextStyle: const TextStyle(fontFamily: 'TitanOne', fontSize: 23.0,
              fontWeight: FontWeight.w100),
          title: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 35, maxWidth: 200),
            child: const Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Row(
                children: [
                  Icon(
                    Icons.explore_outlined,
                  size: 25.0,),
                  Center(child: Text(' EXPLORE'))
                ],
              ),
            ),)
      ),
      body: ListView(children: <Widget>[
        const ListTile(
          leading: Text('STOCK', style: TextStyle(color: customColors.customTextColor)),
          trailing: Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('BUY PRICE', style: TextStyle(color: customColors.customTextColor),),
              Text('SELL PRICE', style: TextStyle(color: customColors.customTextColor)),
            ],
          ),
        ),
        ListTile(
          title: const Text('ARZUM', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Arzum Elektrikli Ev Aletleri Sanayi ve Ticaret A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://www.teamguerilla.com/Images/Customer/eeb95332-54fc-4f8a-8eac-bbcaa6d8468b.jpg',
            fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('22,0800       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('22,1000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (0,64%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('YESIL', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Yeşil Yatırım Holding A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/yesil-yatirim-holding--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('4,7900       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('4,8000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('⚫  (3,82%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('LOGO', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Logo Yazılım Sanayi ve Ticaret A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/logo-yazilim--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('61,2000       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('61,4400', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (3,82%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('VAKBN',  style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Türkiye Vakıflar Bankası T.A.O',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://play-lh.googleusercontent.com/NlkiylLyAWEaPYp_rc_RxypzewA9WOGbh6KShLhOKgv7O-vUYYVpCz9zVLzvsZY3rNY=w240-h480-rw',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('9,7400       ',style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('9,7500', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🔴  (-1,12%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.red),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('SDTTR', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('SDT Uzay ve Savunma Teknolojileri A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://pbs.twimg.com/profile_images/1720061711648985088/_G33Gxlf_400x400.jpg',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('68,4000', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('68,5000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (20,92%)',
                  style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('MERIT', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Merit Turizm Yatırım ve İşletme A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://pbs.twimg.com/profile_images/1231663300099936256/Y3Yfxyms_400x400.jpg',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('34,4400       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('34,6000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🔴  (-1,65%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.red),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('KRDMD', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Kardemir Karabük Demir Çelik Sanayi ve Ticaret A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/KRDMD.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('17,2400       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('17,2800', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (1,41%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('ELITE', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Elite Natural Organik Gıda Sanayive Ticaret A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/elite--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('39,2000       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('39,3000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (4,52%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('BANVIT', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Banvit Bandırma Vitaminli Yem Sanayi A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/banvit--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('83,0000       ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('83,1500', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (-0,48%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('ISKUR', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Türkiye İş Bankası A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://www.isbank.com.tr/StaticFiles/Isbank/images/icons/isbank-og-image.jpg',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('825.000,00 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('924.000,00', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('       ⚫  (0,00%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('KCHOL', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Koç Holding A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://web-node-cdn.foreks.com/cdn/symbol-logos/BIST/KCHOL.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('72,7500 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('72,8000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🔴  (-0,27%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.red),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('YGYO', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Yeni Gimat Gayrimenkul Yatırım Ortaklığı A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/yeni-gimat-gmyo--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('35,3200 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('35,4000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (1,61%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.grey),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('TTKOM', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Türk Telekomunikasyon A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://yt3.googleusercontent.com/ytc/AMLnZu8RC1dnKY9ohFazrPunwcaG91MTFhwiq5lyJpyKGw=s900-c-k-c0x00ffffff-no-rj',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('20,7600 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('20,7800', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🔴  (-2,17%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.red),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('BRSAN', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Borusan Mannesmann Boru Sanayi ve Ticaret A.Ş.',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/borusan-mannesmann--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('68,7000 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('68,9500', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (0,95%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15.0,),
        ListTile(
          title: const Text('ALARK', style: TextStyle(color: customColors.loginButtonTextColor),),
          subtitle: const Text('Alarko Holding',
              style: TextStyle(color: customColors.customTextColor)),
          leading: ClipOval(
            child: Image.network('https://s3-symbol-logo.tradingview.com/alarko-holding--600.png',
              fit: BoxFit.cover,),
          ),
          trailing: const Wrap(
            spacing: 12.0,
            children: <Widget>[
              Text('70,8500 ', style: TextStyle(color: customColors.customTextColor)),
              Column(
                children: [
                  Text('70,9000', style: TextStyle(color: customColors.loginButtonTextColor),),
                  SizedBox(height: 6.0,),
                  Text('🟢  (5,19%)',
                    style: TextStyle(fontSize: 10.0, color: Colors.green),),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 5.0,),
      ],
      ),
    );
  }
}
