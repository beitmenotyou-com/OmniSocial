# OmniSocial GraphQL API

This schema powers frontend queries across identities, posts, and reputation.

## Example Query

```graphql
{
  posts(first: 10) {
    id
    content
    author
  }
}
```

Use with The Graph, Hasura, or custom indexers.
