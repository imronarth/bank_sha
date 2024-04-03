class TopUpFormModel {
  String? amount, pin, paymentMethodCode;

  TopUpFormModel({
    this.amount,
    this.pin,
    this.paymentMethodCode,
  });

  Map<String, dynamic> toJson() => {
        'amount': amount,
        'pin': pin,
        'payment_method_code': paymentMethodCode,
      };

  TopUpFormModel copyWith({
    String? pin,
    amount,
    paymentMethodCode,
  }) =>
      TopUpFormModel(
        pin: pin ?? this.pin,
        amount: amount ?? this.amount,
        paymentMethodCode: paymentMethodCode ?? this.paymentMethodCode,
      );
}
