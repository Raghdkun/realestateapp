class BuyerCardsModel {
  int? buyercardsId;
  String? buyercardsName;
  String? buyercardsImage;

  BuyerCardsModel(
      {this.buyercardsId, this.buyercardsName, this.buyercardsImage});

  BuyerCardsModel.fromJson(Map<String, dynamic> json) {
    buyercardsId = json['buyercards_id'];
    buyercardsName = json['buyercards_name'];
    buyercardsImage = json['buyercards_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buyercards_id'] = this.buyercardsId;
    data['buyercards_name'] = this.buyercardsName;
    data['buyercards_image'] = this.buyercardsImage;
    return data;
  }
}
