---
outline: deep
---

# Provider OAuth


The provider must implement a `oauth` to allow a user to connect to your provider.

## Manifest

OAuth has to be implemented in the manifest with this example :

```json
{
  "oauth": {
    "type": <OAUTH_TYPE>
  }
}
```

OAuth type can be :
- `NONE` -> No oauth is provided
- `AUTHORIZATION` -> The user will receive an authorization link but not need to auth to the provider
- `API_KEY` -> The user must provide an API key that will be used in the connection with the external provider
- `TOKEN` -> The user will connect with and oauth redirect from the external provider

## Routes

The provider must implements 3 routes to handle oauth :

### _POST /oauth/redirect_

#### Description :

This route is used to get the redirect uri to perform the oauth to the external provider

#### Body :
```json
{
  "state": string // Base 64 encoded userId
}
```

#### Response :
```json
{
  "baseUrl": string // The url to redirect the user in case of TOKEN or AUTHORIZATION
}
```

### _POST /oauth_

#### Description :

This route is used to perform the OAuth after redirect to the API

#### Body :
```json
{
  "code": string, // OAuth response code from the external provider
  "state": string // Base 64 encoded userId
}
```

#### Response :
```json
{
  "message": "success"
}
```

### _GET /oauth/state/:id_

#### Description :

This route is used to get a user oauth status (know if it is auth or not)

#### Params :
```
id -> <USER_ID> // The id to check
```

#### Response :
```json
{
  "authenticated": boolean
}
```
