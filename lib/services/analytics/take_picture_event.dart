import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:flutter_aws_amplify/services/analytics/analytics_events.dart';

class TakePictureEvent extends AbstractAnalyticsEvent {
  TakePictureEvent._fromEvent(AnalyticsEvent event)
      : super.withEvent(event: event);

  factory TakePictureEvent({String cameraDirection}) {
    final event = AnalyticsEvent('take_picture');
    event.properties.addStringProperty('camera_direction', cameraDirection);
    return TakePictureEvent._fromEvent(event);
  }
}
