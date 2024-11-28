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
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'latitude',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'longitude',
        type: IsarType.long,
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
  IsarCore.writeString(writer, 1, object.description);
  IsarCore.writeLong(writer, 2, object.latitude);
  IsarCore.writeLong(writer, 3, object.longitude);
  IsarCore.writeLong(
      writer, 4, object.locationTimestamp.toUtc().microsecondsSinceEpoch);
  IsarCore.writeString(writer, 5, object.name);
  IsarCore.writeString(writer, 6, object.speciesId);
  return object.id;
}

@isarProtected
IsarAnimalTracking deserializeIsarAnimalTracking(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _description;
  _description = IsarCore.readString(reader, 1) ?? '';
  final int _latitude;
  _latitude = IsarCore.readLong(reader, 2);
  final int _longitude;
  _longitude = IsarCore.readLong(reader, 3);
  final DateTime _locationTimestamp;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _locationTimestamp =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _locationTimestamp =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String _name;
  _name = IsarCore.readString(reader, 5) ?? '';
  final String _speciesId;
  _speciesId = IsarCore.readString(reader, 6) ?? '';
  final object = IsarAnimalTracking(
    id: _id,
    description: _description,
    latitude: _latitude,
    longitude: _longitude,
    locationTimestamp: _locationTimestamp,
    name: _name,
    speciesId: _speciesId,
  );
  return object;
}

@isarProtected
dynamic deserializeIsarAnimalTrackingProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readLong(reader, 2);
    case 3:
      return IsarCore.readLong(reader, 3);
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readString(reader, 6) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _IsarAnimalTrackingUpdate {
  bool call({
    required int id,
    String? description,
    int? latitude,
    int? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
  });
}

class _IsarAnimalTrackingUpdateImpl implements _IsarAnimalTrackingUpdate {
  const _IsarAnimalTrackingUpdateImpl(this.collection);

  final IsarCollection<int, IsarAnimalTracking> collection;

  @override
  bool call({
    required int id,
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (description != ignore) 1: description as String?,
          if (latitude != ignore) 2: latitude as int?,
          if (longitude != ignore) 3: longitude as int?,
          if (locationTimestamp != ignore) 4: locationTimestamp as DateTime?,
          if (name != ignore) 5: name as String?,
          if (speciesId != ignore) 6: speciesId as String?,
        }) >
        0;
  }
}

sealed class _IsarAnimalTrackingUpdateAll {
  int call({
    required List<int> id,
    String? description,
    int? latitude,
    int? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
  });
}

class _IsarAnimalTrackingUpdateAllImpl implements _IsarAnimalTrackingUpdateAll {
  const _IsarAnimalTrackingUpdateAllImpl(this.collection);

  final IsarCollection<int, IsarAnimalTracking> collection;

  @override
  int call({
    required List<int> id,
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (description != ignore) 1: description as String?,
      if (latitude != ignore) 2: latitude as int?,
      if (longitude != ignore) 3: longitude as int?,
      if (locationTimestamp != ignore) 4: locationTimestamp as DateTime?,
      if (name != ignore) 5: name as String?,
      if (speciesId != ignore) 6: speciesId as String?,
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
    String? description,
    int? latitude,
    int? longitude,
    DateTime? locationTimestamp,
    String? name,
    String? speciesId,
  });
}

class _IsarAnimalTrackingQueryUpdateImpl
    implements _IsarAnimalTrackingQueryUpdate {
  const _IsarAnimalTrackingQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<IsarAnimalTracking> query;
  final int? limit;

  @override
  int call({
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (description != ignore) 1: description as String?,
      if (latitude != ignore) 2: latitude as int?,
      if (longitude != ignore) 3: longitude as int?,
      if (locationTimestamp != ignore) 4: locationTimestamp as DateTime?,
      if (name != ignore) 5: name as String?,
      if (speciesId != ignore) 6: speciesId as String?,
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
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? locationTimestamp = ignore,
    Object? name = ignore,
    Object? speciesId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (description != ignore) 1: description as String?,
        if (latitude != ignore) 2: latitude as int?,
        if (longitude != ignore) 3: longitude as int?,
        if (locationTimestamp != ignore) 4: locationTimestamp as DateTime?,
        if (name != ignore) 5: name as String?,
        if (speciesId != ignore) 6: speciesId as String?,
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
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeEqualTo(
    int value,
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
      longitudeGreaterThan(
    int value,
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
      longitudeGreaterThanOrEqualTo(
    int value,
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
      longitudeLessThan(
    int value,
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
      longitudeLessThanOrEqualTo(
    int value,
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
      longitudeBetween(
    int lower,
    int upper,
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
      locationTimestampEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 4,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 5,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
          property: 6,
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
      sortByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        6,
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
      thenByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByNameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension IsarAnimalTrackingQueryWhereDistinct
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterDistinct>
      distinctBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6, caseSensitive: caseSensitive);
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

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, int, QAfterProperty> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, int, QAfterProperty> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, DateTime, QAfterProperty>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QAfterProperty> speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
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

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, int), QAfterProperty>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, int), QAfterProperty>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, DateTime), QAfterProperty>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R, String), QAfterProperty>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
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

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, int), QOperations>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, int), QOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, DateTime), QOperations>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<IsarAnimalTracking, (R1, R2, String), QOperations>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }
}
