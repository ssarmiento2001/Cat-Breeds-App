// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatImage {
  final String? id;
  final int? width;
  final int? height;
  final String? url;
  CatImage({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  CatImage copyWith({
    String? id,
    int? width,
    int? height,
    String? url,
  }) {
    return CatImage(
      id: id ?? this.id,
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'width': width,
      'height': height,
      'url': url,
    };
  }

  factory CatImage.fromMap(Map<String, dynamic> map) {
    return CatImage(
      id: map['id'] != null ? map['id'] as String : null,
      width: map['width'] != null ? map['width'] as int : null,
      height: map['height'] != null ? map['height'] as int : null,
      url: map['url'] != null ? map['url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatImage.fromJson(String source) =>
      CatImage.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Image(id: $id, width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(covariant CatImage other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.width == width &&
        other.height == height &&
        other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^ width.hashCode ^ height.hashCode ^ url.hashCode;
  }
}
