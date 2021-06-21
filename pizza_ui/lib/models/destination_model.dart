import 'package:flutter/cupertino.dart';
import 'package:pizza_ui/models/activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? Country;
  String? description;
  List<Activity>? activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.Country,
      this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
      imageUrl: '',
      name: 'pizzaone',
      type: 'beef',
      startTime: ['9:00 am', '10:00 am'],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: '',
      name: 'pizzaone',
      type: 'beef',
      startTime: ['9:00 am', '10:00 am'],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: '',
      name: 'pizzaone',
      type: 'beef',
      startTime: ['9:00 am', '10:00 am'],
      rating: 5,
      price: 30),
];

List<Destination> destinations = [
  Destination(
    imageUrl: '',
    city: 'dhaka',
    Country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl: '',
    city: 'dhaka',
    Country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl: '',
    city: 'dhaka',
    Country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl: '',
    city: 'dhaka',
    Country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
];
