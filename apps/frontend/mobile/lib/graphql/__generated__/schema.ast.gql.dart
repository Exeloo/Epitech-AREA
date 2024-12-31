// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const oneOf = _i1.DirectiveDefinitionNode(
  name: _i1.NameNode(value: 'oneOf'),
  args: [],
  locations: [_i1.DirectiveLocation.inputObject],
  repeatable: false,
);
const specifiedBy = _i1.DirectiveDefinitionNode(
  name: _i1.NameNode(value: 'specifiedBy'),
  args: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'url'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
  locations: [_i1.DirectiveLocation.scalar],
  repeatable: false,
);
const Applet = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Applet'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'triggerNodes'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'AppletNode'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const AppletCreateInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AppletCreateInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'triggerNodes'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'AppletNodeCreateInput'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const AppletNode = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AppletNode'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'actionId'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'actionType'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'AppletNodeType'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'input'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'next'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'AppletNode'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'previous'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'AppletNode'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'provider'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Provider'),
        isNonNull: true,
      ),
    ),
  ],
);
const AppletNodeCreateInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AppletNodeCreateInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'actionId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'input'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'next'),
      directives: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'AppletNodeCreateInput'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'providerId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const AppletNodeType = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'AppletNodeType'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'ACTION'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'TRIGGER'),
      directives: [],
    ),
  ],
);
const AuthPasswordInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AuthPasswordInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'password'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const AuthRefreshTokenInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AuthRefreshTokenInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'refreshToken'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    )
  ],
);
const AuthTokenResponse = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'AuthTokenResponse'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'refreshToken'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'token'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'tokenExpiresAt'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'DateTime'),
        isNonNull: true,
      ),
    ),
  ],
);
const DateTime = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'DateTime'),
  directives: [],
);
const JSON = _i1.ScalarTypeDefinitionNode(
  name: _i1.NameNode(value: 'JSON'),
  directives: [],
);
const Mutation = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Mutation'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createApplet'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'AppletCreateInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Applet'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createProvider'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'ProviderCreateInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Provider'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'createUser'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UserCreateInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'User'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'register'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UserRegisterInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'User'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'updateMe'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'UserUpdateInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'User'),
        isNonNull: true,
      ),
    ),
  ],
);
const Provider = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Provider'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'color'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'img'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'manifest'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ProviderManifest'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'visibility'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ProviderVisibility'),
        isNonNull: true,
      ),
    ),
  ],
);
const ProviderCreateInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ProviderCreateInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'host'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'providerId'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'visibility'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'ProviderVisibility'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const ProviderManifest = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ProviderManifest'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'actions'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'ProviderManifestAction'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'triggers'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'ProviderManifestTrigger'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
  ],
);
const ProviderManifestAction = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ProviderManifestAction'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'color'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'img'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'input'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'output'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
    ),
  ],
);
const ProviderManifestTrigger = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'ProviderManifestTrigger'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'color'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'img'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'input'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'name'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'output'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'JSON'),
        isNonNull: true,
      ),
    ),
  ],
);
const ProviderVisibility = _i1.EnumTypeDefinitionNode(
  name: _i1.NameNode(value: 'ProviderVisibility'),
  directives: [],
  values: [
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'PRIVATE'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'PUBLIC'),
      directives: [],
    ),
    _i1.EnumValueDefinitionNode(
      name: _i1.NameNode(value: 'UNLISTED'),
      directives: [],
    ),
  ],
);
const Query = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'Query'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'getAllApplets'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Applet'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'getAllProviders'),
      directives: [],
      args: [],
      type: _i1.ListTypeNode(
        type: _i1.NamedTypeNode(
          name: _i1.NameNode(value: 'Provider'),
          isNonNull: true,
        ),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'getAppletById'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Applet'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'getMe'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'User'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'getProviderById'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'id'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Int'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Provider'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'login'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'AuthPasswordInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'AuthTokenResponse'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'refreshToken'),
      directives: [],
      args: [
        _i1.InputValueDefinitionNode(
          name: _i1.NameNode(value: 'data'),
          directives: [],
          type: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'AuthRefreshTokenInput'),
            isNonNull: true,
          ),
          defaultValue: null,
        )
      ],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'AuthTokenResponse'),
        isNonNull: true,
      ),
    ),
  ],
);
const User = _i1.ObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'User'),
  directives: [],
  interfaces: [],
  fields: [
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'firstName'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'id'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'Int'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'lastName'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'picture'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'pronoun'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
    ),
    _i1.FieldDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      args: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
    ),
  ],
);
const UserCreateInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UserCreateInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'password'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'pronoun'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const UserRegisterInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UserRegisterInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'password'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: true,
      ),
      defaultValue: null,
    ),
  ],
);
const UserUpdateInput = _i1.InputObjectTypeDefinitionNode(
  name: _i1.NameNode(value: 'UserUpdateInput'),
  directives: [],
  fields: [
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'description'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'email'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'firstName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'lastName'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'pronoun'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
    _i1.InputValueDefinitionNode(
      name: _i1.NameNode(value: 'username'),
      directives: [],
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: null,
    ),
  ],
);
const document = _i1.DocumentNode(definitions: [
  oneOf,
  specifiedBy,
  Applet,
  AppletCreateInput,
  AppletNode,
  AppletNodeCreateInput,
  AppletNodeType,
  AuthPasswordInput,
  AuthRefreshTokenInput,
  AuthTokenResponse,
  DateTime,
  JSON,
  Mutation,
  Provider,
  ProviderCreateInput,
  ProviderManifest,
  ProviderManifestAction,
  ProviderManifestTrigger,
  ProviderVisibility,
  Query,
  User,
  UserCreateInput,
  UserRegisterInput,
  UserUpdateInput,
]);
