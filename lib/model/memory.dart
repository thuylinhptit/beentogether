import 'package:json_annotation/json_annotation.dart';
part 'memory.g.dart';

@JsonSerializable(nullable: true)
class ListMemory {
  List<Memory> memoryList ;

  ListMemory({this.memoryList});

  factory ListMemory.fromJson(Map<String, dynamic> json) => _$ListMemoryFromJson(json);

  Map<String, dynamic> toJson() => _$ListMemoryToJson(this);
}


@JsonSerializable(nullable: true)
class Memory {
  String date;
  String content;
  String imagePath;

  Memory({this.date, this.content, this.imagePath});

  factory Memory.fromJson(Map<String, dynamic> json) => _$MemoryFromJson(json);

  Map<String, dynamic> toJson() => _$MemoryToJson(this);
}
