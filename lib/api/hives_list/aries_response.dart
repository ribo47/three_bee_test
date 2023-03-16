import 'package:three_bee_test/api/hives_list/aries.dart';

class AriesResponse {
  int? count;
  String? next;
  String? previous;
  List<Aries>? results;

  AriesResponse({this.count, this.next, this.previous, this.results});

  AriesResponse.fromJson(dynamic json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Aries>[];
      json['results'].forEach((v) {
        results!.add(Aries.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}