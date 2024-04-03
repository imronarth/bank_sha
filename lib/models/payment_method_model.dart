class PaymentMethodModel {
  final String? name, code, thumbnail, status, time;
  final int? id;

  PaymentMethodModel({
    this.id,
    this.name,
    this.code,
    this.thumbnail,
    this.status,
    this.time,
  });

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      PaymentMethodModel(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        thumbnail: json['thumbnail'],
        status: json['status'],
        time: json['time'],
      );
}
