// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subgroup.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SubGroupSchema = Schema(
  name: r'SubGroup',
  id: 2997667353738609586,
  properties: {
    r'channels': PropertySchema(
      id: 0,
      name: r'channels',
      type: IsarType.objectList,
      target: r'Channel',
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _subGroupEstimateSize,
  serialize: _subGroupSerialize,
  deserialize: _subGroupDeserialize,
  deserializeProp: _subGroupDeserializeProp,
);

int _subGroupEstimateSize(
  SubGroup object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.channels.length * 3;
  {
    final offsets = allOffsets[Channel]!;
    for (var i = 0; i < object.channels.length; i++) {
      final value = object.channels[i];
      bytesCount += ChannelSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _subGroupSerialize(
  SubGroup object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<Channel>(
    offsets[0],
    allOffsets,
    ChannelSchema.serialize,
    object.channels,
  );
  writer.writeString(offsets[1], object.name);
}

SubGroup _subGroupDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SubGroup(
    name: reader.readStringOrNull(offsets[1]),
  );
  object.channels = reader.readObjectList<Channel>(
        offsets[0],
        ChannelSchema.deserialize,
        allOffsets,
        Channel(),
      ) ??
      [];
  return object;
}

P _subGroupDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<Channel>(
            offset,
            ChannelSchema.deserialize,
            allOffsets,
            Channel(),
          ) ??
          []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SubGroupQueryFilter
    on QueryBuilder<SubGroup, SubGroup, QFilterCondition> {
  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> channelsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> channelsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> channelsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition>
      channelsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition>
      channelsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> channelsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'channels',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SubGroupQueryObject
    on QueryBuilder<SubGroup, SubGroup, QFilterCondition> {
  QueryBuilder<SubGroup, SubGroup, QAfterFilterCondition> channelsElement(
      FilterQuery<Channel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'channels');
    });
  }
}
