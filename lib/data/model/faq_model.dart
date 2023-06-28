/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the Flutter Commerce open-source project, available at:
 * https://github.com/ashishrawat2911/flutter_commerce
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_model.g.dart';

@JsonSerializable()
class FaqModel {
  factory FaqModel.fromDocument(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);

  String question;
  String answer;

  Map<String, dynamic> toMap() => _$FaqModelToJson(this);

  FaqModel(this.question, this.answer);
}
