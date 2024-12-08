const String loginMutation = """
mutation Login(\$email: String!, \$password: String!) {
  login(data: {email: \$email, password: \$password}) {
    token
    refreshToken
    tokenExpiresAt
  }
}
""";

const String registerMutation = """
mutation Register(\$username: String!, \$email: String!, \$password: String!, \$firstName: String!, \$lastName: String!) {
  register(data: {username: \$username, email: \$email, password: \$password, firstName: \$firstName, lastName: \$lastName}) {
    id
    username
    email
    firstName
    lastName
  }
}
""";

const String createUserMutation = """
mutation CreateUser(\$username: String!, \$email: String!, \$password: String, \$firstName: String!, \$lastName: String!, \$description: String, \$pronoun: String) {
  createUser(data: {username: \$username, email: \$email, password: \$password, firstName: \$firstName, lastName: \$lastName, description: \$description, pronoun: \$pronoun}) {
    id
    username
    email
    firstName
    lastName
    description
    pronoun
  }
}
""";

const String refreshTokenMutation = """
mutation RefreshToken(\$refreshToken: String!) {
  refreshToken(data: {refreshToken: \$refreshToken}) {
    token
    refreshToken
    tokenExpiresAt
  }
}
""";

const String getUserQuery = """
query GetUser(\$id: ID!) {
  user(id: \$id) {
    id
    username
    email
    firstName
    lastName
    description
    pronoun
    picture
  }
}
""";