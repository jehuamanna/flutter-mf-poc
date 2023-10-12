// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupStruct extends BaseStruct {
  GroupStruct({
    List<bool>? groupShow,
  }) : _groupShow = groupShow;

  // "groupShow" field.
  List<bool>? _groupShow;
  List<bool> get groupShow => _groupShow ?? const [];
  set groupShow(List<bool>? val) => _groupShow = val;
  void updateGroupShow(Function(List<bool>) updateFn) =>
      updateFn(_groupShow ??= []);
  bool hasGroupShow() => _groupShow != null;

  static GroupStruct fromMap(Map<String, dynamic> data) => GroupStruct(
        groupShow: getDataList(data['groupShow']),
      );

  static GroupStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? GroupStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'groupShow': _groupShow,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'groupShow': serializeParam(
          _groupShow,
          ParamType.bool,
          true,
        ),
      }.withoutNulls;

  static GroupStruct fromSerializableMap(Map<String, dynamic> data) =>
      GroupStruct(
        groupShow: deserializeParam<bool>(
          data['groupShow'],
          ParamType.bool,
          true,
        ),
      );

  @override
  String toString() => 'GroupStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GroupStruct &&
        listEquality.equals(groupShow, other.groupShow);
  }

  @override
  int get hashCode => const ListEquality().hash([groupShow]);
}

GroupStruct createGroupStruct() => GroupStruct();
