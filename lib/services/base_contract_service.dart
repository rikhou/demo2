import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/base_contract_model.dart';

Future<BaseContract> getBaseContractJson() async {
  String jsonData =
      await rootBundle.loadString('assets/settings/base_contract.json');
  final jsonMap = json.decode(jsonData);
  BaseContract baseContract = BaseContract.fromJson(jsonMap);
  return baseContract;
}
