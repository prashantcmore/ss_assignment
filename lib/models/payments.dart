class Drr {
    List<List<String>> columns;
    List<List<String?>> values;

    Drr({
        required this.columns,
        required this.values,
    });

    factory Drr.fromJson(Map<String, dynamic> json) => Drr(
        columns: List<List<String>>.from(json["columns"].map((x) => List<String>.from(x.map((x) => x)))),
        values: List<List<String?>>.from(json["values"].map((x) => List<String?>.from(x.map((x) => x)))),
    );

    Map<String, dynamic> toJson() => {
        "columns": List<dynamic>.from(columns.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "values": List<dynamic>.from(values.map((x) => List<dynamic>.from(x.map((x) => x)))),
    };
}
