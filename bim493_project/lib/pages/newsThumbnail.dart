import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bim493_project/utils/customColors.dart';

class NewsThumbnail extends StatefulWidget {
  const NewsThumbnail({Key? key}) : super(key: key);

  @override
  State<NewsThumbnail> createState() => _NewsThumbnailState();
}

class _NewsThumbnailState extends State<NewsThumbnail> {

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Borsada rüzgar tersine döndü",
      "images":
      "https://geoim.bloomberght.com/2023/01/12/ver1673518683/2323132_620x349.jpg",
    },
    {
      "title": "SPK'dan ters repo kısıtlamasına erteleme",
      "images":
      "https://geoim.bloomberght.com/2023/01/12/ver1673500834/2323116_620x349.jpg",
    },
    {
      "title": "Astor/Işık: Halka arz gelirini yeni kapasite ve ekipmana ayıracağız",
      "images":
      "https://mo.ciner.com.tr/bb/2023/01/09/ver1673267429/1673266232_400x400.jpg",
    },
    {
      "title": "Apple'ın piyasa değeri 2 milyon doların altına düştü",
      "images":
      "https://geoim.bloomberght.com/2023/01/04/ver1672785993/2322514_620x349.jpg",
    },
    {
      "title": "Ahlatcı Doğal Gaz'dan bedelsiz sermaye artırımı kararı",
      "images":
      "https://imgrosetta.mynet.com.tr/file/16210769/16210769-728xauto.jpg",
    },
    {
      "title": "Uzmanlardan önemli BİST yorumu! Piyasalarda neler bekleniyor?",
      "images":
      "https://medya.com.tr/sites/925/uploads/2022/12/23/borsa-istanbul-bist-100-bist-30-23122022-kapanis-degerleri-1.png?",
    },
    {
      "title": "Enflasyondaki düşüş eğilimi devam edecek",
      "images":
      "https://i2.milimaj.com/i/milliyet/75/0x410/63c6784886b24518dc179213.jpg",
    },
    {
      "title": "Kısa vadeli dış borç stoku arttı",
      "images":
      "https://i2.milimaj.com/i/milliyet/75/0x410/63c64d2886b24518dc17917d.jpg",
    },
    {
      "title": "ECB enflasyon hedefinde kararlılığını kanıtladı",
      "images":
      "https://i2.milimaj.com/i/milliyet/75/0x410/63c6469286b24518dc17912a.jpg"
    },
    {
      "title": "Kripto paralarda güçlü yükseliş",
      "images":
      "https://i2.milimaj.com/i/milliyet/75/0x410/63c64b7986b24518dc179158.jpg",
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColors.scaffoldBackgroundColor,
      appBar: AppBar(
          toolbarHeight: 70.0,
          backgroundColor: customColors.scaffoldBackgroundColor,
          centerTitle: true,
          titleTextStyle: TextStyle(fontFamily: 'TitanOne', fontSize: 23.0,
              fontWeight: FontWeight.w100),
          title: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 35, maxWidth: 200),
            child: Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.newspaper_outlined,
                      size: 25.0,),
                    Text(' NEWS', style: TextStyle(fontSize: 25.0),)
                  ],
                ),
              ),
            ),)
      ),
      body: SafeArea(
        child: _cardWidget(context),
      ),
    );
  }

  @override
  Widget _cardWidget(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height/37.5),
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 245.0,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: customColors.currencyConverterColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                        const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
