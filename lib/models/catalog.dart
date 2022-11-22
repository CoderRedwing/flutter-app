class CatalogModels {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12th generation ",
      price: 999,
      color: "33505a",
      image:
          "https://cdn.shopify.com/s/files/1/1684/4603/products/iphone-12-pro_Graphite_530x@2x.png?v=1652856493",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;

  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
