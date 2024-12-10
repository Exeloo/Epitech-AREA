const String loginQuery = """
query LoginQuery(\$data: AuthPasswordInput!) {
  login(data: \$data) {
    refreshToken
    token
    tokenExpiresAt
  }
}
""";

const String registerMutation = """
mutation Mutation(\$registerData2: UserRegisterInput!) {
  register(data: \$registerData2) {
    username
    lastName
    id
    firstName
    description
    email
    picture
    pronoun
  }
}
""";