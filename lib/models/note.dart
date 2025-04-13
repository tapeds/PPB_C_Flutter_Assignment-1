class Note {
  final int? id;
  final String content;

  Note({this.id, required this.content});

  Note copyWith({int? id, String? content}) {
    return Note(
      id: id ?? this.id,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      content: map['content'],
    );
  }
}