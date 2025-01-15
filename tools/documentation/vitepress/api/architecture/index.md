---
outline: deep

prev:
  text: Introduction
  link: '/api'

next:
  text: Providers
  link: '/api/providers'
---

# API Architecture

For our API, we used a DDD architecture (Domain Driven Design).

This architecture is good to have a scalable app that remains upgradable and modular.

There are 3 main parts :
- `application` where we can find every entry to our api like GraphQL, MVC, Rest or WebSocket
- `domain` where we can find the logic of our api and every processor to perform operations
- `shared` where we can find any functional utilities like auth, persistence or connection with providers. Every expose class of the shared are interfaced in the domain, allow devs to replace easily every shared part.
