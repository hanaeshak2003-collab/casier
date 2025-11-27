import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  final String userName;
  final String category;
  final String diningOption;
  final String? tableName;
  final DateTime timestamp;
  final List<Map<String, dynamic>> items; // { id, name, qty, price, total }
  final double subtotal;
  final double tax;
  final double total;

  OrderModel({
    required this.userName,
    required this.category,
    required this.diningOption,
    this.tableName,
    required this.timestamp,
    required this.items,
    required this.subtotal,
    required this.tax,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'category': category,
      'diningOption': diningOption,
      'tableName': tableName,
      'timestamp': Timestamp.fromDate(timestamp),
      'items': items,
      'subtotal': subtotal,
      'tax': tax,
      'total': total,
    };
  }
}
