struct User: Decodable {
    let name: String
    let age: Int
}

let manager = NetworkManager()
manager.fetchData(from: "https://api.example.com/user", as: User.self) { result in
    switch result {
    case .success(let user):
        print("User name: \(user.name), age: \(user.age)")
    case .failure(let error):
        print("Failed to fetch data: \(error)")
    }
}
