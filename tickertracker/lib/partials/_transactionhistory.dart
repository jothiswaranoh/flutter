// partials/transaction_list.dart

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tickertracker/data/model/add_date.dart';
import 'package:tickertracker/data/utlity.dart';

Widget _buildTransactionHistory() {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        history = box.values.toList()[index];
        return _getList(history, index);
      },
      childCount: box.length,
    ),
  );
}

Widget _getList(Add_data history, int index) {
  return Dismissible(
    key: UniqueKey(),
    onDismissed: (direction) {
      history.delete();
    },
    child: _get(index, history),
  );
}

  ListTile get(int index, Add_data history) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset('images/${history.name}.png', height: 40),
      ),
      title: Text(
        history.name,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        '${day[history.datetime.weekday - 1]}  ${history.datetime.year}-${history.datetime.day}-${history.datetime.month}',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        history.amount,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: history.IN == 'Income' ? Colors.green : Colors.red,
        ),
      ),
    );
  }