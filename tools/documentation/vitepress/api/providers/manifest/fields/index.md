---
outline: deep

prev:
  text: Actions
  link: '/api/providers/actions'

next:
  text: Triggers
  link: '/api/providers/triggers'
---

# Providers Manifest Fields

In the manifest `actions` and `triggers`, there is 2 fields that are more complex than others : `input` and `output`

These two can describe types as input or output for the provider.

Here is an example of it :

```json
{
  "example_field_1": {
    "type": "string",
    "name": "Example Name 1",
    "description": "Example Description 1"
  },
  "example_field_2": {
    "type": "number",
    "name": "Example Name 2",
    "description": "Example Description 2",
    "optional": true
  }
}
```

## Description

There are two fields to describe the "field": `name` and `description`. They are optional but are recommend to be set for user UX compliance.

## Optional

The `optional` field is optional and is set by default to `false`.

This allows this field to not be provided or be null.

## Type

There are type allows by the API for a type :

- `string`
- `number`
- `boolean`
- `enum`
- `array`
- `object`

The 3 lasts required sup fields to be fulled describe :

### Enum

`enum` type required a sup field `enum` as follows :

```json
{
  "type": "enum",
  "name": "Example Name",
  "description": "Example Description",
  "enum": [
    "value_1",
    "value_2",
    "value_3"
  ]
}
```

### Array

`array` type required a sup field `items` as follows :

```json
{
  "type": "array",
  "name": "Example Name",
  "description": "Example Description",
  "items": {
    "type": "string"
  }
}
```
```json
{
  "type": "array",
  "name": "Example Name",
  "description": "Example Description",
  "items": {
    "type": "array",
    "items": {
      "type": "string"
    }
  }
}
```

### Object

`object` type required a sup field `properties` as follows :


```json
{
  "type": "object",
  "name": "Example Name",
  "description": "Example Description",
  "properties": {
    "example_property_1": {
      "type": "string"
    },
    "example_property_2": {
      "type": "object",
      "properties": {
        "example_property_3": {
          "type": "string"
        }
      }
    }
  }
}
```
