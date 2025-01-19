// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aether/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:aether/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'applet.var.gql.g.dart';

abstract class GgetAllAppletsVars
    implements Built<GgetAllAppletsVars, GgetAllAppletsVarsBuilder> {
  GgetAllAppletsVars._();

  factory GgetAllAppletsVars(
          [void Function(GgetAllAppletsVarsBuilder b) updates]) =
      _$GgetAllAppletsVars;

  static Serializer<GgetAllAppletsVars> get serializer =>
      _$ggetAllAppletsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAllAppletsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAllAppletsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAllAppletsVars.serializer,
        json,
      );
}

abstract class GgetAppletByIdVars
    implements Built<GgetAppletByIdVars, GgetAppletByIdVarsBuilder> {
  GgetAppletByIdVars._();

  factory GgetAppletByIdVars(
          [void Function(GgetAppletByIdVarsBuilder b) updates]) =
      _$GgetAppletByIdVars;

  int get id;
  static Serializer<GgetAppletByIdVars> get serializer =>
      _$ggetAppletByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletByIdVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletByIdVars.serializer,
        json,
      );
}

abstract class GgetAppletNodeByIdVars
    implements Built<GgetAppletNodeByIdVars, GgetAppletNodeByIdVarsBuilder> {
  GgetAppletNodeByIdVars._();

  factory GgetAppletNodeByIdVars(
          [void Function(GgetAppletNodeByIdVarsBuilder b) updates]) =
      _$GgetAppletNodeByIdVars;

  int get id;
  static Serializer<GgetAppletNodeByIdVars> get serializer =>
      _$ggetAppletNodeByIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetAppletNodeByIdVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetAppletNodeByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetAppletNodeByIdVars.serializer,
        json,
      );
}

abstract class GcreateAppletVars
    implements Built<GcreateAppletVars, GcreateAppletVarsBuilder> {
  GcreateAppletVars._();

  factory GcreateAppletVars(
          [void Function(GcreateAppletVarsBuilder b) updates]) =
      _$GcreateAppletVars;

  _i2.GAppletCreateInput get data;
  static Serializer<GcreateAppletVars> get serializer =>
      _$gcreateAppletVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GcreateAppletVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GcreateAppletVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GcreateAppletVars.serializer,
        json,
      );
}

abstract class GupdateAppletVars
    implements Built<GupdateAppletVars, GupdateAppletVarsBuilder> {
  GupdateAppletVars._();

  factory GupdateAppletVars(
          [void Function(GupdateAppletVarsBuilder b) updates]) =
      _$GupdateAppletVars;

  int get id;
  _i2.GAppletUpdateInput get data;
  static Serializer<GupdateAppletVars> get serializer =>
      _$gupdateAppletVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateAppletVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GupdateAppletVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateAppletVars.serializer,
        json,
      );
}

abstract class GdeleteAppletVars
    implements Built<GdeleteAppletVars, GdeleteAppletVarsBuilder> {
  GdeleteAppletVars._();

  factory GdeleteAppletVars(
          [void Function(GdeleteAppletVarsBuilder b) updates]) =
      _$GdeleteAppletVars;

  int get id;
  static Serializer<GdeleteAppletVars> get serializer =>
      _$gdeleteAppletVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteAppletVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdeleteAppletVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteAppletVars.serializer,
        json,
      );
}

abstract class GBaseAppletProviderVars
    implements Built<GBaseAppletProviderVars, GBaseAppletProviderVarsBuilder> {
  GBaseAppletProviderVars._();

  factory GBaseAppletProviderVars(
          [void Function(GBaseAppletProviderVarsBuilder b) updates]) =
      _$GBaseAppletProviderVars;

  static Serializer<GBaseAppletProviderVars> get serializer =>
      _$gBaseAppletProviderVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletProviderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletProviderVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletProviderVars.serializer,
        json,
      );
}

abstract class GBaseAppletNodeVars
    implements Built<GBaseAppletNodeVars, GBaseAppletNodeVarsBuilder> {
  GBaseAppletNodeVars._();

  factory GBaseAppletNodeVars(
          [void Function(GBaseAppletNodeVarsBuilder b) updates]) =
      _$GBaseAppletNodeVars;

  static Serializer<GBaseAppletNodeVars> get serializer =>
      _$gBaseAppletNodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletNodeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletNodeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletNodeVars.serializer,
        json,
      );
}

abstract class GExtendedAppletNodeVars
    implements Built<GExtendedAppletNodeVars, GExtendedAppletNodeVarsBuilder> {
  GExtendedAppletNodeVars._();

  factory GExtendedAppletNodeVars(
          [void Function(GExtendedAppletNodeVarsBuilder b) updates]) =
      _$GExtendedAppletNodeVars;

  static Serializer<GExtendedAppletNodeVars> get serializer =>
      _$gExtendedAppletNodeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExtendedAppletNodeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExtendedAppletNodeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExtendedAppletNodeVars.serializer,
        json,
      );
}

abstract class GBaseAppletVars
    implements Built<GBaseAppletVars, GBaseAppletVarsBuilder> {
  GBaseAppletVars._();

  factory GBaseAppletVars([void Function(GBaseAppletVarsBuilder b) updates]) =
      _$GBaseAppletVars;

  static Serializer<GBaseAppletVars> get serializer =>
      _$gBaseAppletVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBaseAppletVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBaseAppletVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBaseAppletVars.serializer,
        json,
      );
}

abstract class GAppletWithNodesVars
    implements Built<GAppletWithNodesVars, GAppletWithNodesVarsBuilder> {
  GAppletWithNodesVars._();

  factory GAppletWithNodesVars(
          [void Function(GAppletWithNodesVarsBuilder b) updates]) =
      _$GAppletWithNodesVars;

  static Serializer<GAppletWithNodesVars> get serializer =>
      _$gAppletWithNodesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAppletWithNodesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAppletWithNodesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAppletWithNodesVars.serializer,
        json,
      );
}
