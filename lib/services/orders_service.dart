import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/order_model.dart';

class OrdersService {
  final CollectionReference _orders =
      FirebaseFirestore.instance.collection('orders');

  Future<void> saveOrder(OrderModel order) async {
    await _orders.add(order.toMap());
  }
}
