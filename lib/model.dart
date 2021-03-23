import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Item {
  Item(
      {this.uuid,
      this.url = '',
      this.name = '',
      this.price = 0,
      this.qty = 0,
      this.bomUuid});

  String? uuid;
  String? url;
  String? name;
  double? price;
  double? qty;

  String? bomUuid;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable()
class Bom {
  Bom();

  String? name;
  String? uuid;

  factory Bom.fromJson(Map<String, dynamic> json) => _$BomFromJson(json);
  Map<String, dynamic> toJson() => _$BomToJson(this);
}
