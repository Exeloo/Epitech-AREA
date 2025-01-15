---
outline: deep
---

# Provider Triggers

The provider must implement an `triggers` field to allow a user to perform triggers to your provider.

## Manifest

Actions has to be implemented in the manifest with this example :

```json
{
  "triggers": [
    {
      "id": string, // Unique trigger id of the provider
      "name": string, // Name of the trigger
      "description": string, // Description of the trigger
      "img": string, // Image that describe the trigger
      "color": string, // Color that describe the trigger
      "input": Fields, // Input object type
      "output": Fields // Output object type
    }
  ]
}
```

Fields `input` and `output` are describe [here](/api/providers/manifest/field)

## Routes

The provider must implements one routes to handle triggers :

### _POST /triggers_

#### Description :

This route is used to register a trigger to 

#### Body :
```json
{
  "name": string, // The unique id of the trigger
  "userId": number, // UserId of the user that call the trigger
  "data": object // Input of the trigger as describe in the manifest
}
```

#### Response :
```json
{
  "message": "success",
  "data": object // Output of the trigger as describe in the manifest
}
```

As `userId` is passed through this call, is the purpose of your provider to verify if the user is allowed to use this trigger.
