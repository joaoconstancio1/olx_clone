import 'package:flutter/material.dart';
import 'package:xlo_mobx/screens/filter/components/orderby_field.dart';
import 'package:xlo_mobx/screens/filter/components/price_range_field.dart';
import 'package:xlo_mobx/screens/filter/components/vendor_type_field.dart';
import 'package:xlo_mobx/stores/filter_store.dart';

class FilterScreen extends StatelessWidget {

  final FilterStore filter = FilterStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filtrar Busca"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                OrderByField(filter),
                PriceRangeField(filter),
                VendorTypeField(filter),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
