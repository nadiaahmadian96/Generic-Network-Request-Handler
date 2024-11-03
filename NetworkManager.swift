struct NetworkManager {
    func fetchData<T: Decodable>(from url: String, as type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        // Simulate network fetch
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            // Mock data for demonstration purposes
            let jsonData = """
            {
                "name": "Alice",
                "age": 30
            }
            """.data(using: .utf8)!
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: jsonData)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
