import 'package:equatable/equatable.dart';


class VideoSummaryEntity extends Equatable{
  final List<Content> content;
  final bool canGenerateTrip;
  final String userId;

  const VideoSummaryEntity({
    required this.content,
    required this.canGenerateTrip,
    required this.userId,
  });

  @override
  List<Object> get props{
    return [
      content,
      canGenerateTrip,
      userId
    ];
  }
}

class Content {
  final String? locationName;
  final double? startTime;
  final double? endTime;
  final String? summary;
  final String? placeId;
  final double? lat;
  final double? lng;
  final String? category;
  final String? photo;

  Content({
    this.locationName,
    this.startTime,
    this.endTime,
    this.summary,
    this.placeId,
    this.lat,
    this.lng,
    this.category,
    this.photo
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      locationName: json['location_name'],
      startTime: json['start_time']?.toDouble(), // Convert to double
      endTime: json['end_time']?.toDouble(), // Convert to double
      summary: json['summary'],
      placeId: json['place_id'],
      lat: json['lat']?.toDouble(),
      lng: json['lng']?.toDouble(),
      category: json['category'],
      photo: json['photo']
    );
  }
}
