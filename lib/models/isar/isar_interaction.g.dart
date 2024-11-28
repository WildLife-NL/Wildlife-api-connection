// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_interaction.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetIsarInteractionCollection on Isar {
  IsarCollection<int, IsarInteraction> get isarInteractions =>
      this.collection();
}

const IsarInteractionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'IsarInteraction',
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
        name: 'speciesId',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'typeId',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, IsarInteraction>(
    serialize: serializeIsarInteraction,
    deserialize: deserializeIsarInteraction,
    deserializeProperty: deserializeIsarInteractionProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeIsarInteraction(IsarWriter writer, IsarInteraction object) {
  IsarCore.writeString(writer, 1, object.description);
  IsarCore.writeLong(writer, 2, object.latitude);
  IsarCore.writeLong(writer, 3, object.longitude);
  IsarCore.writeString(writer, 4, object.speciesId);
  IsarCore.writeLong(writer, 5, object.typeId);
  return object.id;
}

@isarProtected
IsarInteraction deserializeIsarInteraction(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _description;
  _description = IsarCore.readString(reader, 1) ?? '';
  final int _latitude;
  _latitude = IsarCore.readLong(reader, 2);
  final int _longitude;
  _longitude = IsarCore.readLong(reader, 3);
  final String _speciesId;
  _speciesId = IsarCore.readString(reader, 4) ?? '';
  final int _typeId;
  _typeId = IsarCore.readLong(reader, 5);
  final object = IsarInteraction(
    id: _id,
    description: _description,
    latitude: _latitude,
    longitude: _longitude,
    speciesId: _speciesId,
    typeId: _typeId,
  );
  return object;
}

@isarProtected
dynamic deserializeIsarInteractionProp(IsarReader reader, int property) {
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
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readLong(reader, 5);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _IsarInteractionUpdate {
  bool call({
    required int id,
    String? description,
    int? latitude,
    int? longitude,
    String? speciesId,
    int? typeId,
  });
}

class _IsarInteractionUpdateImpl implements _IsarInteractionUpdate {
  const _IsarInteractionUpdateImpl(this.collection);

  final IsarCollection<int, IsarInteraction> collection;

  @override
  bool call({
    required int id,
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? speciesId = ignore,
    Object? typeId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (description != ignore) 1: description as String?,
          if (latitude != ignore) 2: latitude as int?,
          if (longitude != ignore) 3: longitude as int?,
          if (speciesId != ignore) 4: speciesId as String?,
          if (typeId != ignore) 5: typeId as int?,
        }) >
        0;
  }
}

sealed class _IsarInteractionUpdateAll {
  int call({
    required List<int> id,
    String? description,
    int? latitude,
    int? longitude,
    String? speciesId,
    int? typeId,
  });
}

class _IsarInteractionUpdateAllImpl implements _IsarInteractionUpdateAll {
  const _IsarInteractionUpdateAllImpl(this.collection);

  final IsarCollection<int, IsarInteraction> collection;

  @override
  int call({
    required List<int> id,
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? speciesId = ignore,
    Object? typeId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (description != ignore) 1: description as String?,
      if (latitude != ignore) 2: latitude as int?,
      if (longitude != ignore) 3: longitude as int?,
      if (speciesId != ignore) 4: speciesId as String?,
      if (typeId != ignore) 5: typeId as int?,
    });
  }
}

extension IsarInteractionUpdate on IsarCollection<int, IsarInteraction> {
  _IsarInteractionUpdate get update => _IsarInteractionUpdateImpl(this);

  _IsarInteractionUpdateAll get updateAll =>
      _IsarInteractionUpdateAllImpl(this);
}

sealed class _IsarInteractionQueryUpdate {
  int call({
    String? description,
    int? latitude,
    int? longitude,
    String? speciesId,
    int? typeId,
  });
}

class _IsarInteractionQueryUpdateImpl implements _IsarInteractionQueryUpdate {
  const _IsarInteractionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<IsarInteraction> query;
  final int? limit;

  @override
  int call({
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? speciesId = ignore,
    Object? typeId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (description != ignore) 1: description as String?,
      if (latitude != ignore) 2: latitude as int?,
      if (longitude != ignore) 3: longitude as int?,
      if (speciesId != ignore) 4: speciesId as String?,
      if (typeId != ignore) 5: typeId as int?,
    });
  }
}

extension IsarInteractionQueryUpdate on IsarQuery<IsarInteraction> {
  _IsarInteractionQueryUpdate get updateFirst =>
      _IsarInteractionQueryUpdateImpl(this, limit: 1);

  _IsarInteractionQueryUpdate get updateAll =>
      _IsarInteractionQueryUpdateImpl(this);
}

class _IsarInteractionQueryBuilderUpdateImpl
    implements _IsarInteractionQueryUpdate {
  const _IsarInteractionQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<IsarInteraction, IsarInteraction, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? description = ignore,
    Object? latitude = ignore,
    Object? longitude = ignore,
    Object? speciesId = ignore,
    Object? typeId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (description != ignore) 1: description as String?,
        if (latitude != ignore) 2: latitude as int?,
        if (longitude != ignore) 3: longitude as int?,
        if (speciesId != ignore) 4: speciesId as String?,
        if (typeId != ignore) 5: typeId as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension IsarInteractionQueryBuilderUpdate
    on QueryBuilder<IsarInteraction, IsarInteraction, QOperations> {
  _IsarInteractionQueryUpdate get updateFirst =>
      _IsarInteractionQueryBuilderUpdateImpl(this, limit: 1);

  _IsarInteractionQueryUpdate get updateAll =>
      _IsarInteractionQueryBuilderUpdateImpl(this);
}

extension IsarInteractionQueryFilter
    on QueryBuilder<IsarInteraction, IsarInteraction, QFilterCondition> {
  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdEqualTo(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdGreaterThan(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdGreaterThanOrEqualTo(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdLessThan(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdLessThanOrEqualTo(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdBetween(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdStartsWith(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdEndsWith(
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      speciesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterFilterCondition>
      typeIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension IsarInteractionQueryObject
    on QueryBuilder<IsarInteraction, IsarInteraction, QFilterCondition> {}

extension IsarInteractionQuerySortBy
    on QueryBuilder<IsarInteraction, IsarInteraction, QSortBy> {
  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> sortBySpeciesId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> sortByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      sortByTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension IsarInteractionQuerySortThenBy
    on QueryBuilder<IsarInteraction, IsarInteraction, QSortThenBy> {
  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByDescriptionDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> thenBySpeciesId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenBySpeciesIdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy> thenByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterSortBy>
      thenByTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension IsarInteractionQueryWhereDistinct
    on QueryBuilder<IsarInteraction, IsarInteraction, QDistinct> {
  QueryBuilder<IsarInteraction, IsarInteraction, QAfterDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterDistinct>
      distinctBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarInteraction, IsarInteraction, QAfterDistinct>
      distinctByTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension IsarInteractionQueryProperty1
    on QueryBuilder<IsarInteraction, IsarInteraction, QProperty> {
  QueryBuilder<IsarInteraction, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarInteraction, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarInteraction, int, QAfterProperty> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarInteraction, int, QAfterProperty> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarInteraction, String, QAfterProperty> speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarInteraction, int, QAfterProperty> typeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension IsarInteractionQueryProperty2<R>
    on QueryBuilder<IsarInteraction, R, QAfterProperty> {
  QueryBuilder<IsarInteraction, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarInteraction, (R, String), QAfterProperty>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarInteraction, (R, int), QAfterProperty> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarInteraction, (R, int), QAfterProperty> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarInteraction, (R, String), QAfterProperty>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarInteraction, (R, int), QAfterProperty> typeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension IsarInteractionQueryProperty3<R1, R2>
    on QueryBuilder<IsarInteraction, (R1, R2), QAfterProperty> {
  QueryBuilder<IsarInteraction, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<IsarInteraction, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<IsarInteraction, (R1, R2, int), QOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<IsarInteraction, (R1, R2, int), QOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<IsarInteraction, (R1, R2, String), QOperations>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<IsarInteraction, (R1, R2, int), QOperations> typeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
