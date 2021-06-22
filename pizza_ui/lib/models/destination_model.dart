import 'package:flutter/cupertino.dart';
import 'package:pizza_ui/models/activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  String? description;
  List<Activity>? activities;

  Destination(
      {this.imageUrl,
      this.city,
      this.country,
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
    imageUrl:
        'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
    city: 'dhaka',
    country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
    city: 'dhaka',
    country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
    city: 'dhaka',
    country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
    city: 'dhaka',
    country: 'BD',
    description: 'Nothing to write',
    activities: activities,
  ),
];
