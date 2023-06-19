class News {
  final String status;
  final int totalResults;
  final List<Articles> articles;

  News(this.status, this.totalResults, this.articles);

  News.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        totalResults = json['totalResults'],
        articles = json['articles'];
}

class Articles {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles(this.source, this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);

  Articles.fromJson(Map<String, dynamic> json)
      : source = json['source'],
        author = json['author'],
        title = json['title'],
        description = json['description'],
        url = json['url'],
        urlToImage = json['urlToImage'],
        publishedAt = json['publishedAt'],
        content = json['content'];
}

class Source {
  final int id;
  final String name;

  Source(this.id, this.name);

  Source.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
