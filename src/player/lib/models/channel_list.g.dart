// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChannelListCollection on Isar {
  IsarCollection<ChannelList> get channelLists => this.collection();
}

const ChannelListSchema = CollectionSchema(
  name: r'ChannelList',
  id: -377231903435317995,
  properties: {
    r'groups': PropertySchema(
      id: 0,
      name: r'groups',
      type: IsarType.objectList,
      target: r'Group',
    ),
    r'headerPrefix': PropertySchema(
      id: 1,
      name: r'headerPrefix',
      type: IsarType.string,
    )
  },
  estimateSize: _channelListEstimateSize,
  serialize: _channelListSerialize,
  deserialize: _channelListDeserialize,
  deserializeProp: _channelListDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Group': GroupSchema,
    r'SubGroup': SubGroupSchema,
    r'Channel': ChannelSchema
  },
  getId: _channelListGetId,
  getLinks: _channelListGetLinks,
  attach: _channelListAttach,
  version: '3.1.0+1',
);

int _channelListEstimateSize(
  ChannelList object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.groups.length * 3;
  {
    final offsets = allOffsets[Group]!;
    for (var i = 0; i < object.groups.length; i++) {
      final value = object.groups[i];
      bytesCount += GroupSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.headerPrefix;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _channelListSerialize(
  ChannelList object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Group>(
    offsets[0],
    allOffsets,
    GroupSchema.serialize,
    object.groups,
  );
  writer.writeString(offsets[1], object.headerPrefix);
}

ChannelList _channelListDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChannelList(
    headerPrefix: reader.readStringOrNull(offsets[1]),
  );
  object.groups = reader.readObjectList<Group>(
        offsets[0],
        GroupSchema.deserialize,
        allOffsets,
        Group(),
      ) ??
      [];
  object.id = id;
  return object;
}

P _channelListDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Group>(
            offset,
            GroupSchema.deserialize,
            allOffsets,
            Group(),
          ) ??
          []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _channelListGetId(ChannelList object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _channelListGetLinks(ChannelList object) {
  return [];
}

void _channelListAttach(
    IsarCollection<dynamic> col, Id id, ChannelList object) {
  object.id = id;
}

extension ChannelListQueryWhereSort
    on QueryBuilder<ChannelList, ChannelList, QWhere> {
  QueryBuilder<ChannelList, ChannelList, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChannelListQueryWhere
    on QueryBuilder<ChannelList, ChannelList, QWhereClause> {
  QueryBuilder<ChannelList, ChannelList, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<ChannelList, ChannelList, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterWhereClause> idBetween(
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

extension ChannelListQueryFilter
    on QueryBuilder<ChannelList, ChannelList, QFilterCondition> {
  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      groupsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'groups',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'headerPrefix',
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'headerPrefix',
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headerPrefix',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headerPrefix',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headerPrefix',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerPrefix',
        value: '',
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition>
      headerPrefixIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headerPrefix',
        value: '',
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition> idBetween(
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
}

extension ChannelListQueryObject
    on QueryBuilder<ChannelList, ChannelList, QFilterCondition> {
  QueryBuilder<ChannelList, ChannelList, QAfterFilterCondition> groupsElement(
      FilterQuery<Group> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'groups');
    });
  }
}

extension ChannelListQueryLinks
    on QueryBuilder<ChannelList, ChannelList, QFilterCondition> {}

extension ChannelListQuerySortBy
    on QueryBuilder<ChannelList, ChannelList, QSortBy> {
  QueryBuilder<ChannelList, ChannelList, QAfterSortBy> sortByHeaderPrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerPrefix', Sort.asc);
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterSortBy>
      sortByHeaderPrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerPrefix', Sort.desc);
    });
  }
}

extension ChannelListQuerySortThenBy
    on QueryBuilder<ChannelList, ChannelList, QSortThenBy> {
  QueryBuilder<ChannelList, ChannelList, QAfterSortBy> thenByHeaderPrefix() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerPrefix', Sort.asc);
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterSortBy>
      thenByHeaderPrefixDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerPrefix', Sort.desc);
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChannelList, ChannelList, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ChannelListQueryWhereDistinct
    on QueryBuilder<ChannelList, ChannelList, QDistinct> {
  QueryBuilder<ChannelList, ChannelList, QDistinct> distinctByHeaderPrefix(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headerPrefix', caseSensitive: caseSensitive);
    });
  }
}

extension ChannelListQueryProperty
    on QueryBuilder<ChannelList, ChannelList, QQueryProperty> {
  QueryBuilder<ChannelList, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChannelList, List<Group>, QQueryOperations> groupsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groups');
    });
  }

  QueryBuilder<ChannelList, String?, QQueryOperations> headerPrefixProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headerPrefix');
    });
  }
}
