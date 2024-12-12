// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_animal_tracking.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAnimalTrackingCollection on Isar {
  IsarCollection<IsarAnimalTracking> get isarAnimalTrackings =>
      this.collection();
}

const IsarAnimalTrackingSchema = CollectionSchema(
  name: r'IsarAnimalTracking',
  id: 1381765366370338731,
  properties: {
    r'latitude': PropertySchema(
      id: 0,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'locationTimestamp': PropertySchema(
      id: 1,
      name: r'locationTimestamp',
      type: IsarType.dateTime,
    ),
    r'longitude': PropertySchema(
      id: 2,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'speciesCommonName': PropertySchema(
      id: 4,
      name: r'speciesCommonName',
      type: IsarType.string,
    ),
    r'speciesId': PropertySchema(
      id: 5,
      name: r'speciesId',
      type: IsarType.string,
    ),
    r'speciesName': PropertySchema(
      id: 6,
      name: r'speciesName',
      type: IsarType.string,
    )
  },
  estimateSize: _isarAnimalTrackingEstimateSize,
  serialize: _isarAnimalTrackingSerialize,
  deserialize: _isarAnimalTrackingDeserialize,
  deserializeProp: _isarAnimalTrackingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarAnimalTrackingGetId,
  getLinks: _isarAnimalTrackingGetLinks,
  attach: _isarAnimalTrackingAttach,
  version: '3.1.0+1',
);

int _isarAnimalTrackingEstimateSize(
  IsarAnimalTracking object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.speciesCommonName.length * 3;
  bytesCount += 3 + object.speciesId.length * 3;
  bytesCount += 3 + object.speciesName.length * 3;
  return bytesCount;
}

void _isarAnimalTrackingSerialize(
  IsarAnimalTracking object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.latitude);
  writer.writeDateTime(offsets[1], object.locationTimestamp);
  writer.writeDouble(offsets[2], object.longitude);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.speciesCommonName);
  writer.writeString(offsets[5], object.speciesId);
  writer.writeString(offsets[6], object.speciesName);
}

IsarAnimalTracking _isarAnimalTrackingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAnimalTracking(
    id: id,
    latitude: reader.readDouble(offsets[0]),
    locationTimestamp: reader.readDateTime(offsets[1]),
    longitude: reader.readDouble(offsets[2]),
    name: reader.readString(offsets[3]),
    speciesCommonName: reader.readString(offsets[4]),
    speciesId: reader.readString(offsets[5]),
    speciesName: reader.readString(offsets[6]),
  );
  return object;
}

P _isarAnimalTrackingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAnimalTrackingGetId(IsarAnimalTracking object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarAnimalTrackingGetLinks(
    IsarAnimalTracking object) {
  return [];
}

void _isarAnimalTrackingAttach(
    IsarCollection<dynamic> col, Id id, IsarAnimalTracking object) {
  object.id = id;
}

extension IsarAnimalTrackingQueryWhereSort
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QWhere> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarAnimalTrackingQueryWhere
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QWhereClause> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarAnimalTrackingQueryFilter
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QFilterCondition> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      latitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationTimestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      locationTimestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationTimestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speciesCommonName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speciesCommonName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speciesCommonName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesCommonName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesCommonNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speciesCommonName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speciesId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speciesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speciesId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speciesId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speciesName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'speciesName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'speciesName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speciesName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterFilterCondition>
      speciesNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'speciesName',
        value: '',
      ));
    });
  }
}

extension IsarAnimalTrackingQueryObject
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QFilterCondition> {}

extension IsarAnimalTrackingQueryLinks
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QFilterCondition> {}

extension IsarAnimalTrackingQuerySortBy
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QSortBy> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationTimestamp', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationTimestamp', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesCommonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesCommonName', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesCommonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesCommonName', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesId', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesId', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      sortBySpeciesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.desc);
    });
  }
}

extension IsarAnimalTrackingQuerySortThenBy
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QSortThenBy> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationTimestamp', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLocationTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationTimestamp', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesCommonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesCommonName', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesCommonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesCommonName', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesId', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesId', Sort.desc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.asc);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QAfterSortBy>
      thenBySpeciesNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speciesName', Sort.desc);
    });
  }
}

extension IsarAnimalTrackingQueryWhereDistinct
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct> {
  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctByLocationTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationTimestamp');
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctBySpeciesCommonName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speciesCommonName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctBySpeciesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speciesId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QDistinct>
      distinctBySpeciesName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speciesName', caseSensitive: caseSensitive);
    });
  }
}

extension IsarAnimalTrackingQueryProperty
    on QueryBuilder<IsarAnimalTracking, IsarAnimalTracking, QQueryProperty> {
  QueryBuilder<IsarAnimalTracking, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarAnimalTracking, double, QQueryOperations>
      latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<IsarAnimalTracking, DateTime, QQueryOperations>
      locationTimestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationTimestamp');
    });
  }

  QueryBuilder<IsarAnimalTracking, double, QQueryOperations>
      longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QQueryOperations>
      speciesCommonNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speciesCommonName');
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QQueryOperations>
      speciesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speciesId');
    });
  }

  QueryBuilder<IsarAnimalTracking, String, QQueryOperations>
      speciesNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speciesName');
    });
  }
}
