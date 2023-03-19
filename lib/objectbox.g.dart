// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'app/data/models/alarm_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 4289873114435469248),
      name: 'AlarmModel',
      lastPropertyId: const IdUid(4, 5914924845092073997),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7857471152738723087),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 191915127189955183),
            name: 'alarmTime',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6851735567850953523),
            name: 'isEnabled',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5914924845092073997),
            name: 'intervalToAlarm',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 4289873114435469248),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    AlarmModel: EntityDefinition<AlarmModel>(
        model: _entities[0],
        toOneRelations: (AlarmModel object) => [],
        toManyRelations: (AlarmModel object) => {},
        getId: (AlarmModel object) => object.id,
        setId: (AlarmModel object, int id) {
          object.id = id;
        },
        objectToFB: (AlarmModel object, fb.Builder fbb) {
          final alarmTimeOffset = fbb.writeString(object.alarmTime);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, alarmTimeOffset);
          fbb.addBool(2, object.isEnabled);
          fbb.addInt64(3, object.intervalToAlarm);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = AlarmModel(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              alarmTime: const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              isEnabled:
                  const fb.BoolReader().vTableGet(buffer, rootOffset, 8, false),
              intervalToAlarm:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [AlarmModel] entity fields to define ObjectBox queries.
class AlarmModel_ {
  /// see [AlarmModel.id]
  static final id =
      QueryIntegerProperty<AlarmModel>(_entities[0].properties[0]);

  /// see [AlarmModel.alarmTime]
  static final alarmTime =
      QueryStringProperty<AlarmModel>(_entities[0].properties[1]);

  /// see [AlarmModel.isEnabled]
  static final isEnabled =
      QueryBooleanProperty<AlarmModel>(_entities[0].properties[2]);

  /// see [AlarmModel.intervalToAlarm]
  static final intervalToAlarm =
      QueryIntegerProperty<AlarmModel>(_entities[0].properties[3]);
}
