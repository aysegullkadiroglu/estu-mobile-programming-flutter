import 'dart:convert';

class Pizza {
  Pizza();

  int? id;
  String? pizzaName;
  String? description;
  double? price;
  String? imgUrl;

  Pizza.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id'].toString());
    pizzaName = json['pizzaName'];
    description = json['description'];
    price = json['price'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imgUrl': imgUrl,
    };
  }

  String convertToJSON(List<Pizza> pizzas) {
    String json = '[';
    pizzas.forEach((pizza) {
      json += jsonEncode(pizza);
    });
    json += ']';
    return json;
  }
}