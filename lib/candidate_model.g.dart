part of 'main.dart';

class CandidateAdapter extends TypeAdapter<Candidate> {
  @override
  final int typeId = 0;

  @override
  Candidate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Candidate(
      name: fields[0] as String,
      surname: fields[1] as String,
      patronymic: fields[2] as String,
      age_category: fields[3] as String,
      job: fields[4] as String,
      email: fields[5] as String,
      section: fields[6] as String,
      phone_number: fields[7] as String,
      leadership: fields[8] as String,
      insert_date: fields[9] as String,
      description: fields[10] as String,
      update_date: fields[11] as String,
      filename: fields[12] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Candidate obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.patronymic)
      ..writeByte(3)
      ..write(obj.age_category)
      ..writeByte(4)
      ..write(obj.job)
      ..writeByte(5)
      ..write(obj.email)
      ..writeByte(6)
      ..write(obj.section)
      ..writeByte(7)
      ..write(obj.phone_number)
      ..writeByte(8)
      ..write(obj.leadership)
      ..writeByte(9)
      ..write(obj.insert_date)
      ..writeByte(10)
      ..write(obj.description)
      ..writeByte(11)
      ..write(obj.update_date)
      ..writeByte(12)
      ..write(obj.filename);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CandidateAdapter &&
              runtimeType == other.runtimeType &&
              typeId == other.typeId;
}
