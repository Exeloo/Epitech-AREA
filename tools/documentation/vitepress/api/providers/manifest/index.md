---
outline: deep
---

# Provider Manifest

The provider must implement a `manifest` to allow the API to understand the way the provider work.

Here is an example of a manifest :
```shell
curl -X GET "<PROVIDER_HOST>/manifest" -H "api-key: <API_KEY>"
```
```json
{
  "name": "Discord",
  "description": "Discord Provider",
  "img": "https://firebasestorage.googleapis.com/v0/b/area-444018.firebasestorage.app/o/discord-mark-white.svg?alt=media&token=3e70a756-fdb6-437a-9219-51e8c97d059a",
  "color": "#5865f2",
  "oauth": {
    "type": "AUTHORIZATION"
  },
  "triggers": [],
  "actions": []
}
```

This manifest is composed of 4 main parts.

## Description

API need a description of the provider. This passed through 4 fields :
- `name` -> The name of the provider
- `description` -> A short description of the provider
- `img` -> A link to an image that represent the provider
- `color` -> A color that represent the provider

## OAuth

The provider must handle a type of authorization for a user to use their product.

For more on oauth go [here](/api/providers/oauth) 

## Triggers

This is an array of the handled triggers that can be used by a user.

For more on triggers go [here](/api/providers/triggers) 

## Actions

This is an array of the handled actions that can be called by a user.

For more on triggers go [here](/api/providers/actions)
