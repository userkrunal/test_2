// To parse this JSON data, do
//
//     final UserfeedModel = UserfeedModelFromJson(jsonString);

import 'dart:convert';

UserfeedModel UserfeedModelFromJson(String str) => UserfeedModel.fromJson(json.decode(str));

String UserfeedModelToJson(UserfeedModel data) => json.encode(data.toJson());

class UserfeedModel {
  String? status;
  List<Result>? result;

  UserfeedModel({
    this.status,
    this.result,
  });

  factory UserfeedModel.fromJson(Map<String, dynamic> json) => UserfeedModel(
    status: json["status"],
    result: json["result"] == null ? [] : List<Result>.from(json["result"]!.map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class Result {
  int? mediaWeight;
  int? userPk;
  dynamic viewCount;
  dynamic adTrackingToken;
  int? tstamp;
  int? mediaType;
  dynamic hasAudio;
  UserName? userName;
  String? mediaOrgToken;
  bool? hasLiked;
  dynamic adId;
  String? mediaCode;
  String? mediaId;
  String? mediaImpToken;
  int? carouselSize;
  int? likeCount;
  MediaLocation? mediaLocation;
  double? mediaPk;
  List<MediaCaption>? mediaCaption;
  int? nIx;
  int? duplicate;
  List<MediaLayout>? mediaLayout;
  int? selfIsFollowing;

  Result({
    this.mediaWeight,
    this.userPk,
    this.viewCount,
    this.adTrackingToken,
    this.tstamp,
    this.mediaType,
    this.hasAudio,
    this.userName,
    this.mediaOrgToken,
    this.hasLiked,
    this.adId,
    this.mediaCode,
    this.mediaId,
    this.mediaImpToken,
    this.carouselSize,
    this.likeCount,
    this.mediaLocation,
    this.mediaPk,
    this.mediaCaption,
    this.nIx,
    this.duplicate,
    this.mediaLayout,
    this.selfIsFollowing,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    mediaWeight: json["media_weight"],
    userPk: json["user_pk"],
    viewCount: json["view_count"],
    adTrackingToken: json["ad_tracking_token"],
    tstamp: json["tstamp"],
    mediaType: json["media_type"],
    hasAudio: json["has_audio"],
    userName: userNameValues.map[json["user_name"]]!,
    mediaOrgToken: json["media_org_token"],
    hasLiked: json["has_liked"],
    adId: json["ad_id"],
    mediaCode: json["media_code"],
    mediaId: json["media_id"],
    mediaImpToken: json["media_imp_token"],
    carouselSize: json["carousel_size"],
    likeCount: json["like_count"],
    mediaLocation: json["media_location"] == null ? null : MediaLocation.fromJson(json["media_location"]),
    mediaPk: json["media_pk"]?.toDouble(),
    mediaCaption: json["media_caption"] == null ? [] : List<MediaCaption>.from(json["media_caption"]!.map((x) => MediaCaption.fromJson(x))),
    nIx: json["n_ix"],
    duplicate: json["duplicate"],
    mediaLayout: json["media_layout"] == null ? [] : List<MediaLayout>.from(json["media_layout"]!.map((x) => MediaLayout.fromJson(x))),
    selfIsFollowing: json["self_is_following"],
  );

  Map<String, dynamic> toJson() => {
    "media_weight": mediaWeight,
    "user_pk": userPk,
    "view_count": viewCount,
    "ad_tracking_token": adTrackingToken,
    "tstamp": tstamp,
    "media_type": mediaType,
    "has_audio": hasAudio,
    "user_name": userNameValues.reverse[userName],
    "media_org_token": mediaOrgToken,
    "has_liked": hasLiked,
    "ad_id": adId,
    "media_code": mediaCode,
    "media_id": mediaId,
    "media_imp_token": mediaImpToken,
    "carousel_size": carouselSize,
    "like_count": likeCount,
    "media_location": mediaLocation?.toJson(),
    "media_pk": mediaPk,
    "media_caption": mediaCaption == null ? [] : List<dynamic>.from(mediaCaption!.map((x) => x.toJson())),
    "n_ix": nIx,
    "duplicate": duplicate,
    "media_layout": mediaLayout == null ? [] : List<dynamic>.from(mediaLayout!.map((x) => x.toJson())),
    "self_is_following": selfIsFollowing,
  };
}

class MediaCaption {
  String? cpk;
  String? text;

  MediaCaption({
    this.cpk,
    this.text,
  });

  factory MediaCaption.fromJson(Map<String, dynamic> json) => MediaCaption(
    cpk: json["cpk"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "cpk": cpk,
    "text": text,
  };
}

class MediaLayout {
  int? type;
  Image? video;
  Image? image;
  String? id;

  MediaLayout({
    this.type,
    this.video,
    this.image,
    this.id,
  });

  factory MediaLayout.fromJson(Map<String, dynamic> json) => MediaLayout(
    type: json["type"],
    video: json["video"] == null ? null : Image.fromJson(json["video"]),
    image: json["image"] == null ? null : Image.fromJson(json["image"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "video": video?.toJson(),
    "image": image?.toJson(),
    "id": id,
  };
}

class Image {
  int? height;
  int? widthLo;
  String? url;
  String? urlLo;
  int? width;
  int? heightLo;
  double? duration;

  Image({
    this.height,
    this.widthLo,
    this.url,
    this.urlLo,
    this.width,
    this.heightLo,
    this.duration,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    height: json["height"],
    widthLo: json["width_lo"],
    url: json["url"],
    urlLo: json["url_lo"],
    width: json["width"],
    heightLo: json["height_lo"],
    duration: json["duration"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "width_lo": widthLo,
    "url": url,
    "url_lo": urlLo,
    "width": width,
    "height_lo": heightLo,
    "duration": duration,
  };
}

class MediaLocation {
  dynamic zip;
  double? lon;
  dynamic country;
  dynamic city;
  dynamic address;
  int? lpk;
  double? lat;
  String? name;

  MediaLocation({
    this.zip,
    this.lon,
    this.country,
    this.city,
    this.address,
    this.lpk,
    this.lat,
    this.name,
  });

  factory MediaLocation.fromJson(Map<String, dynamic> json) => MediaLocation(
    zip: json["zip"],
    lon: json["lon"]?.toDouble(),
    country: json["country"],
    city: json["city"],
    address: json["address"],
    lpk: json["lpk"],
    lat: json["lat"]?.toDouble(),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "zip": zip,
    "lon": lon,
    "country": country,
    "city": city,
    "address": address,
    "lpk": lpk,
    "lat": lat,
    "name": name,
  };
}

enum UserName {
  INSTAGRAM
}

final userNameValues = EnumValues({
  "instagram": UserName.INSTAGRAM
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
