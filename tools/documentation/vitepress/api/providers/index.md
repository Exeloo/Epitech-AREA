---
outline: deep

prev:
  text: Architecture
  link: '/api/architecture'

next:
  text: Manifest
  link: '/api/providers/manifest'
---

# API Provider

A provider is a system that interface an external API like Google or Microsoft, to our API.

There are some rules to a provider to allows API to be more generic.

The main rule is that the provider must provide a manifest, that describe each triggers and actions and many specifications about it. Learn more about manifest [here](./../../api/providers/manifest/index.md).

## Authorization

At the creation, API will provider you an API key that must be used in any call to the API to identify and authorize the provider.

To each call the provider do to API, it must have this field in headers :
```
api-key: <API_KEY>
```
