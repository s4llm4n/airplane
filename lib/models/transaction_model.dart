import 'package:airplane/models/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTravel;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    required this.destination,
    this.amountOfTravel = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  List<Object?> get props => [
    destination,
    amountOfTravel,
    selectedSeat,
    insurance,
    refundable,
    vat,
    price,
    grandTotal,
  ];
}
