class Model {
  int? id;
  String? productName;
  String? price;
  String? explane;

  Model(this.productName, this.price, this.explane,);

  Model.withId(this.id, this.productName, this.price, this.explane,);

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      "productName": productName,
      "price": price,
      "explane": explane,
    };

    if (id != null) {
      map["id"] = id;
    }
    return map;
  }

  Model.fromMap(Map<String, Object?> map) {
    id = (map["id"] as int?)!;
    productName = (map["productName"] as String?)!;
    price = (map["price"] as String?)!;
    explane = (map["explane"] as String?)!;
  }
}
