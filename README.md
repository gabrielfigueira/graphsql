# README



INDEX

query {

  users {
    id
    name
  }
}

SHOW

query {

      user(id: 1002) {
        id
        name
      }

}

CREATE
mutation {
    createUser(input: { fullName: "Hello World", email: "This is my first post" }) {
      user {
        id
        name
        email
      }
    }
}

UPDATE

mutation {

  updateUser(input: {id: "101",
    attributes: {
      name: "gariel" ,
      email: "email@gmail.com"
    }
  }){
    user {
      id
    }
  }
}

DESTROY

mutation {

  destroyUser(input: {id: "101"}){
    id
  }
}
