// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item()
    ..uuid = json['uuid'] as String?
    ..url = json['url'] as String?
    ..name = json['name'] as String?
    ..price = (json['price'] as num?)?.toDouble()
    ..qty = (json['qty'] as num?)?.toDouble()
    ..bomUuid = json['bomUuid'] as String?;
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'url': instance.url,
      'name': instance.name,
      'price': instance.price,
      'qty': instance.qty,
      'bomUuid': instance.bomUuid,
    };

Bom _$BomFromJson(Map<String, dynamic> json) {
  return Bom()
    ..name = json['name'] as String?
    ..uuid = json['uuid'] as String?;
}

Map<String, dynamic> _$BomToJson(Bom instance) => <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };
