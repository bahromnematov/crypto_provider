class Roi {
  double times;
  String currency;
  double percentage;

  Roi({
    required this.times,
    required this.currency,
    required this.percentage,
  });

  factory Roi.fromJson(Map<String, dynamic> json) => Roi(
    times: json["times"]?.toDouble(),
    currency: json["currency"],
    percentage: json["percentage"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "times": times,
    "currency": currency,
    "percentage": percentage,
  };
}
