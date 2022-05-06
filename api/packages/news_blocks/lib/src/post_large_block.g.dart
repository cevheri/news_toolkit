// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: cast_nullable_to_non_nullable, implicit_dynamic_parameter, lines_longer_than_80_chars, prefer_const_constructors, require_trailing_commas

part of 'post_large_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostLargeBlock _$PostLargeBlockFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PostLargeBlock',
      json,
      ($checkedConvert) {
        final val = PostLargeBlock(
          id: $checkedConvert('id', (v) => v as String),
          category: $checkedConvert(
              'category', (v) => $enumDecode(_$PostCategoryEnumMap, v)),
          author: $checkedConvert('author', (v) => v as String),
          publishedAt: $checkedConvert(
              'published_at', (v) => DateTime.parse(v as String)),
          imageUrl: $checkedConvert('image_url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          action: $checkedConvert(
              'action',
              (v) => v == null
                  ? null
                  : BlockAction.fromJson(v as Map<String, dynamic>)),
          type: $checkedConvert(
              'type', (v) => v as String? ?? PostLargeBlock.identifier),
          isPremium: $checkedConvert('is_premium', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'publishedAt': 'published_at',
        'imageUrl': 'image_url',
        'isPremium': 'is_premium'
      },
    );

Map<String, dynamic> _$PostLargeBlockToJson(PostLargeBlock instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'category': _$PostCategoryEnumMap[instance.category],
    'author': instance.author,
    'published_at': instance.publishedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('image_url', instance.imageUrl);
  val['title'] = instance.title;
  writeNotNull('description', instance.description);
  writeNotNull('action', instance.action?.toJson());
  val['is_premium'] = instance.isPremium;
  val['type'] = instance.type;
  return val;
}

const _$PostCategoryEnumMap = {
  PostCategory.business: 'business',
  PostCategory.entertainment: 'entertainment',
  PostCategory.health: 'health',
  PostCategory.science: 'science',
  PostCategory.sports: 'sports',
  PostCategory.technology: 'technology',
};