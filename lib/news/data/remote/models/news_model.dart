import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class News {
  int? totalArticles;
  List<Articles>? articles;

  News({this.totalArticles, this.articles});
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);


}
@JsonSerializable()
class Articles {
  String? title;
  String? description;
  String? content;
  String? url;
  String? image;
  String? publishedAt;
  Source? source;

  Articles(
      {this.title,
        this.description,
        this.content,
        this.url,
        this.image,
        this.publishedAt,
        this.source});

  factory Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesToJson(this);


}
@JsonSerializable()
class Source {
  String? name;
  String? url;

  Source({this.name, this.url});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
