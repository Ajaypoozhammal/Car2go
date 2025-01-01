class CreateBuyModel {
  CreateBuyModel({
      this.error,});

  CreateBuyModel.fromJson(dynamic json) {
    error = json['error'];
  }
  String? error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    return map;
  }

}