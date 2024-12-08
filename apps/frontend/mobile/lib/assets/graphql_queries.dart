const String loginMutation = """
mutation Login(\$email: String!, \$password: String!) {
  login(email: \$email, password: \$password) {
    token
    user {
      id
      name
      email
    }
  }
}
""";

const String registerMutation = """
mutation Register(\$username: String!, \$email: String!, \$password: String!) {
  register(username: \$username, email: \$email, password: \$password) {
    token
    user {
      id
      name
      email
    }
  }
}
""";

const String getUserQuery = """
query GetUser(\$id: ID!) {
  user(id: \$id) {
    id
    name
    email
  }
}
""";