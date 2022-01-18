import 'package:meta/meta.dart';

class RandomGif {
    RandomGif({
        required this.results,
        required this.next,
    });

    final List<Result> results;
    final String next;

    factory RandomGif.fromJson(Map<String, dynamic> json) => RandomGif(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        next: json["next"],
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "next": next,
    };
}

class Result {
    Result({
        required this.tags,
        required this.url,
        required this.media,
        required this.created,
        required this.shares,
        required this.itemurl,
        required this.composite,
        required this.hasaudio,
        required this.title,
        required this.id,
    });

    final List<dynamic> tags;
    final String url;
    final List<Map<String, Media>> media;
    final double created;
    final int shares;
    final String itemurl;
    final dynamic composite;
    final bool hasaudio;
    final String title;
    final String id;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        url: json["url"],
        media: List<Map<String, Media>>.from(json["media"].map((x) => Map.from(x).map((k, v) => MapEntry<String, Media>(k, Media.fromJson(v))))),
        created: json["created"].toDouble(),
        shares: json["shares"],
        itemurl: json["itemurl"],
        composite: json["composite"],
        hasaudio: json["hasaudio"],
        title: json["title"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "url": url,
        "media": List<dynamic>.from(media.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())))),
        "created": created,
        "shares": shares,
        "itemurl": itemurl,
        "composite": composite,
        "hasaudio": hasaudio,
        "title": title,
        "id": id,
    };
}

class Media {
    Media({
        required this.url,
        required this.dims,
        required this.preview,
        required this.size,
        required this.duration,
    });

    final String url;
    final List<int> dims;
    final String preview;
    final int size;
    final double duration;

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        url: json["url"],
        dims: List<int>.from(json["dims"].map((x) => x)),
        preview: json["preview"],
        size: json["size"],
        duration: json["duration"] == null ? null : json["duration"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "dims": List<dynamic>.from(dims.map((x) => x)),
        "preview": preview,
        "size": size,
        "duration": duration == duration,
    };
}
