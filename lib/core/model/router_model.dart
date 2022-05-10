import 'package:flutter/material.dart';

class RouterModel {
  String? title;
  String? path;
  IconData? icon;
  List<String>? roles;
  List<RouterModel>? children;

  RouterModel({this.title, this.path, this.icon, this.roles, this.children});

  RouterModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    path = json['path'];
    icon = json['icon'];
    roles = json['roles'].cast<String>();
    if (json['children'] != null) {
      children = <RouterModel>[];
      json['children'].forEach((v) {
        children!.add(v.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['path'] = path;
    data['icon'] = icon;
    data['roles'] = roles;
    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
