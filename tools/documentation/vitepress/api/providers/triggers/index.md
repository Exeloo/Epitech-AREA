---
outline: deep

prev:
  text: Actions
  link: '/api/providers/actions'

next:
  text: Fields
  link: '/api/providers/manifest/fields'
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

Fields `input` and `output` are describe [here](./../../../api/providers/manifest/fields/index.md)

## Routes

The provider must implements one routes to handle triggers :

### _POST /triggers_

#### Description :

This route is used to register a trigger to your provider

#### Body :
```json
{
  "baseId": number, // Unique id of the applet node for the API (id to return on trigger)
  "userId": number, // Id of the user that create the node
  "actionId": string, // Id of the trigger to register
  "input": object // Input to register to the trigger
}
```

#### Response :
```json
{
  "message": "success"
}
```

As `userId` is passed through this call, is the purpose of your provider to verify if the user is allowed to use this trigger.

## WebSocket

To send the trigger to the API, we use a websocket connection between providers and the API.

We use `socket.io` protocol to our communications.

### Identify

After connected to the server, your provider need to use the `identify` route to identify itself to the API :

```ts
socket.emit("identify", {
    apiKey: "<API_KEY>",
});
```

If everything is ok the API will respond with a call on the route `ok`

### Triggers

On trigger your provider must send a message on a route that has the name of `actionId` with this params :

1. An array of the `baseId` triggered
2. The output data of the trigger describe by the manifest

```ts
socket.emit(
    "<actionId>",
    [1, 2, 4],
    { "author": "example_author_id" },
);
```
