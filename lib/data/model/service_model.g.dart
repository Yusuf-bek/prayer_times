// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModelApiAdapter extends TypeAdapter<ModelApi> {
  @override
  final int typeId = 0;

  @override
  ModelApi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModelApi(
      month: fields[0] as int?,
      day: fields[1] as int?,
      times: fields[2] as Times?,
      region: fields[3] as String?,
      date: fields[4] as String?,
      weekday: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ModelApi obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.month)
      ..writeByte(1)
      ..write(obj.day)
      ..writeByte(2)
      ..write(obj.times)
      ..writeByte(3)
      ..write(obj.region)
      ..writeByte(4)
      ..write(obj.date)
      ..writeByte(5)
      ..write(obj.weekday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelApiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TimesAdapter extends TypeAdapter<Times> {
  @override
  final int typeId = 1;

  @override
  Times read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Times(
      tongSaharlik: fields[0] as String?,
      quyosh: fields[1] as String?,
      peshin: fields[2] as String?,
      asr: fields[3] as String?,
      shomIftor: fields[4] as String?,
      hufton: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Times obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.tongSaharlik)
      ..writeByte(1)
      ..write(obj.quyosh)
      ..writeByte(2)
      ..write(obj.peshin)
      ..writeByte(3)
      ..write(obj.asr)
      ..writeByte(4)
      ..write(obj.shomIftor)
      ..writeByte(5)
      ..write(obj.hufton);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
