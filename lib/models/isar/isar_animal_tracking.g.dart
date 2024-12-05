// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_animal_tracking.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetIsarAnimalTrackingCollection on Isar {
  IsarCollection<int, IsarAnimalTracking> get isarAnimalTrackings =>
      this.collection();
}

const IsarAnimalTrackingSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'IsarAnimalTracking',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'latitude',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'longitude',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'locationTimestamp',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'speciesId',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'speciesName',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'speciesCommonName',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, IsarAnimalTracking>(
    serialize: serializeIsarAnimalTracking,
    deserialize: deserializeIsarAnimalTracking,
    deserializeProperty: deserializeIsarAnimalTrackingProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeIsarAnimalTracking(IsarWriter writer, IsarAnimalTracking object) {
  IsarCore.writeDouble(writer, 1, object.latitude);
  IsarCore.writeDouble(writer, 2, object.longitude);
  IsarCore.writeLong(
      writer, 3, object.locationTimestamp.toUtc().microsecondsSinceEpoch);
  IsarCore.writeString(writer, 4, object.name);
  IsarCore.writeString(writer, 5, object.speciesId);
  IsarCore.writeString(writer, 6, object.speciesName);
  IsarCore.writeString(writer, 7, object.speciesCommonName);
  return object.id;
}

@isarProtected
IsarAnimalTracking deserializeIsarAnimalTracking(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final double _latitude;
  _latitude = IsarCore.readDouble(reader, 1);
  final double _longitude;
  _longitude = IsarCore.readDouble(reader, 2);
  final DateTime _locationTimestamp;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _locationTimestamp =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _locationTimestamp =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String _name;
  _name = IsarCore.readString(reader, 4) ?? '';
  final String _speciesId;
  _speciesId = IsarCore.readString(reader, 5) ?? '';
  final String _speciesName;
  _speciesName = IsarCore.readString(reader, 6) ?? '';
  final String _speciesCommonName;
  _speciesCommonName = IsarCore.readString(reader, 7) ?? '';
  final object = IsarAnimalTracking(
    id: _id,
    latitude: _latitude,
    longitude: _longitude,
    locationTimestamp: _locationTimestamp,
    name: _name,
    speciesId: _speciesId,
    speciesName: _speciesName,
    speciesCommonName: _speciesCommonName,
  );
  return object;
}

@isarProtected
dynamic deserializeIsarAnimalTrackingProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readDouble(reader, 1);
    case 2:
      return IsarCore.readDouble(reader, 2);
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    case 7:
      return IsarCore.readString(reader, 7) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _IsarAnimalTrackingUpdate {
  bool call({
    required int id,
    double? latitude,
    double? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
    String? speciesName,
    String? speciesCommonName,
  });
}

class _IsarAnimalTrackingUpdateImpl implements _IsarAnimalTrackingUpdate {
  const _IsarAnimalTrackingUpdateImpl(this.collection);

  final IsarCollection<int, IsarAnimalTracking> collection;

  @override
  bool call({
    required int id,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
    Object? speciesName = ignore,
    Object? speciesCommonName = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (latitude != ignore) 1: latitude as double?,
          if (longitude != ignore) 2: longitude as double?,
          if (locationTimestamp != ignore) 3: locationTimestamp as DateTime?,
          if (name != ignore) 4: name as String?,
          if (speciesId != ignore) 5: speciesId as String?,
          if (speciesName != ignore) 6: speciesName as String?,
          if (speciesCommonName != ignore) 7: speciesCommonName as String?,
        }) >
        0;
  }
}

sealed class _IsarAnimalTrackingUpdateAll {
  int call({
    required List<int> id,
    double? latitude,
    double? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
    String? speciesName,
    String? speciesCommonName,
  });
}

class _IsarAnimalTrackingUpdateAllImpl implements _IsarAnimalTrackingUpdateAll {
  const _IsarAnimalTrackingUpdateAllImpl(this.collection);

  final IsarCollection<int, IsarAnimalTracking> collection;

  @override
  int call({
    required List<int> id,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
    Object? speciesName = ignore,
    Object? speciesCommonName = ignore,
  }) {
    return collection.updateProperties(id, {
      if (latitude != ignore) 1: latitude as double?,
      if (longitude != ignore) 2: longitude as double?,
      if (locationTimestamp != ignore) 3: locationTimestamp as DateTime?,
      if (name != ignore) 4: name as String?,
      if (speciesId != ignore) 5: speciesId as String?,
      if (speciesName != ignore) 6: speciesName as String?,
      if (speciesCommonName != ignore) 7: speciesCommonName as String?,
    });
  }
}

extension IsarAnimalTrackingUpdate on IsarCollection<int, IsarAnimalTracking> {
  _IsarAnimalTrackingUpdate get update => _IsarAnimalTrackingUpdateImpl(this);

  _IsarAnimalTrackingUpdateAll get updateAll =>
      _IsarAnimalTrackingUpdateAllImpl(this);
}

sealed class _IsarAnimalTrackingQueryUpdate {
  int call({
    double? latitude,
    double? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
    String? speciesName,
    String? speciesCommonName,
  });
}

class _IsarAnimalTrackingQueryUpdateImpl
    implements _IsarAnimalTrackingQueryUpdate {
  const _IsarAnimalTrackingQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<IsarAnimalTracking> query;
  final int? limit;

  @override
  int call({
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
    Object? speciesName = ignore,
    Object? speciesCommonName = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (latitude != ignore) 1: latitude as double?,
      if (longitude != ignore) 2: longitude as double?,
      if (locationTimestamp != ignore) 3: locationTimestamp as DateTime?,
      if (name != ignore) 4: name as String?,
      if (speciesId != ignore) 5: speciesId as String?,
      if (speciesName != ignore) 6: speciesName as String?,
      if (speciesCommonName != ignore) 7: speciesCommonName as String?,
    });
  }
}

extension IsarAnimalTrackingQueryUpdate on IsarQuery<IsarAnimalTracking> {
  _IsarAnimalTrackingQueryUpdate get updateFirst =>
      _IsarAnimalTrackingQueryUpdateImpl(this, limit: 1);

  _IsarAnimalTrackingQueryUpdate get updateAll =>
      _IsarAnimalTrackingQueryUpdateImpl(this);
}

class _IsarAnimalTrackingQueryBuilderUpdateImpl
    implements _IsarAnimalTrackingQueryUpdate {
  const _IsarAnimalTrackingQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
    Object? speciesName = ignore,
    Object? speciesCommonName = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (latitude != ignore) 1: latitude as double?,
        if (longitude != ignore) 2: longitude as double?,
        if (locationTimestamp != ignore) 3: locationTimestamp as DateTime?,
        if (name != ignore) 4: name as String?,
        if (speciesId != ignore) 5: speciesId as String?,
        if (speciesName != ignore) 6: speciesName as String?,
        if (speciesCommonName != ignore) 7: speciesCommonName as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension IsarAnimalTrackingQueryBuilderUpdate
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QOperations> {
  _IsarAnimalTrackingQueryUpdate get updateFirst =>
      _IsarAnimalTrackingQueryBuilderUpdateImpl(this, limit: 1);

  _IsarAnimalTrackingQueryUpdate get updateAll =>
      _IsarAnimalTrackingQueryBuilderUpdateImpl(this);
}

extension IsarAnimalTrackingQueryFilter
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QFilterCondition> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeGreaterThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeGreaterThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeLessThan(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeLessThanOrEqualTo(
    double value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeBetween(
    double lower,
    double upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 6,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 6,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 6,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }
}

extension IsarAnimalTrackingQueryObject
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QFilterCondition> {}

extension IsarAnimalTrackingQuerySortBy
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QSortBy> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesCommonName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesCommonNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension IsarAnimalTrackingQuerySortThenBy
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QSortThenBy> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesCommonName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesCommonNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension IsarAnimalTrackingQueryWhereDistinct
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctBySpeciesName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctBySpeciesCommonName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }
}

extension IsarAnimalTrackingQueryProperty1
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QProperty> {
  QueryBuilder<IsarAnimalTracking, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarAnimalTracking, double, QAfterProperty> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, double, QAfterProperty> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, DateTime, QAfterProperty>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty> speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty>
      speciesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty>
      speciesCommonNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension IsarAnimalTrackingQueryProperty2<R>
    on QueryBuilder<IsarAnimalTracking, R, QAfterProperty> {
  QueryBuilder<IsarAnimalTracking, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, double), QAfterProperty>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, double), QAfterProperty>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, DateTime), QAfterProperty>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty>
      speciesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty>
      speciesCommonNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension IsarAnimalTrackingQueryProperty3<R1, R2>
    on QueryBuilder<IsarAnimalTracking, (R1, R2), QAfterProperty> {
  QueryBuilder<IsarAnimalTracking, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, double), QOperations>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, double), QOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, DateTime), QOperations>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      speciesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      speciesCommonNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}
