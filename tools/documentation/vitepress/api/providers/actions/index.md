---
outline: deep

prev:
  text: OAuth
  link: '/api/providers/oauth'

next:
  text: Triggers
  link: '/api/providers/triggers'
---

# Provider Actions

The provider must implement an `actions` field to allow a user to perform actions to your provider.

## Manifest

Actions has to be implemented in the manifest with this example :

```json
{
  "actions": [
    {
      "id": string, // Unique action id of the provider
      "name": string, // Name of the action
      "description": string, // Description of the action
      "img": string, // Image that describe the action
      "color": string, // Color that describe the action
      "input": Fields, // Input object type
      "output": Fields // Output object type
    }
  ]
}
```

Fields `input` and `output` are describe [here](./../../../api/providers/manifest/fields/index.md)

## Routes

The provider must implements one routes to handle actions :

### _POST /actions_

#### Description :

This route is used to call an action by some elements put in body

#### Body :
```json
{
  "name": string, // The unique id of the action
  "userId": number, // UserId of the user that call the action
  "data": object // Input of the action as describe in the manifest
}
```

#### Response :
```json
{
  "message": "success",
  "data": object // Output of the action as describe in the manifest
}
```

As `userId` is passed through this call, is the purpose of your provider to verify if the user is allowed to use this action.
