class Aries {
  int? id;
  String? name;
  String? color;
  String? latitude;
  String? longitude;
  String? route;
  String? streetNumber;
  String? city;
  String? postalCode;
  String? country;
  String? province;
  String? region;
  String? thumbnailApiaryListUrl;
  String? description;
  String? imageId;
  Weights? weights;

  Aries(
      {this.id,
      this.name,
      this.color,
      this.latitude,
      this.longitude,
      this.route,
      this.streetNumber,
      this.city,
      this.postalCode,
      this.country,
      this.province,
      this.region,
      this.thumbnailApiaryListUrl,
      this.description,
      this.imageId,
      this.weights});

  Aries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    route = json['route'];
    streetNumber = json['street_number'];
    city = json['city'];
    postalCode = json['postal_code'];
    country = json['country'];
    province = json['province'];
    region = json['region'];
    thumbnailApiaryListUrl = json['thumbnail_apiary_list_url'];
    description = json['description'];
    imageId = json['image_id'];
    weights = json['weights'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['color'] = color;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['route'] = route;
    data['street_number'] = streetNumber;
    data['city'] = city;
    data['postal_code'] = postalCode;
    data['country'] = country;
    data['province'] = province;
    data['region'] = region;
    data['thumbnail_apiary_list_url'] = thumbnailApiaryListUrl;
    data['description'] = description;
    data['image_id'] = imageId;
    data['weights'] = weights;
    return data;
  }
}

class Weights {
  dynamic delta;

  Weights({
    this.delta,
  });

  Weights.fromJson(Map<String, dynamic> json) {
    delta = json['delta'];
  }
}
