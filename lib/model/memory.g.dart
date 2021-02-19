part of 'memory.dart';

ListMemory _$ListMemoryFromJson(Map<String, dynamic> json) {
  return ListMemory(
    memoryList: (json['memoryList'] as List)
        ?.map((e) =>
            e == null ? null : Memory.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ListMemoryToJson(ListMemory instance) =>
    <String, dynamic>{
      'memoryList': instance.memoryList,
    };

Memory _$MemoryFromJson(Map<String, dynamic> json) {
  return Memory(
    date: json['date'] as String,
    content: json['content'] as String,
    imagePath: json['imagePath'] as String,
  );
}

Map<String, dynamic> _$MemoryToJson(Memory instance) => <String, dynamic>{
      'date': instance.date,
      'content': instance.content,
      'imagePath': instance.imagePath,
    };
