import Foundation
import Alamofire
struct AuthRemoteDataSource {
    private static let baseURL: String = "https://dummyjson.com/auth/"
    private static let authURL: String = baseURL + "auth/"
    private let loginURL: String = authURL + "/login"

    func login(userName: String, password: String, result: @escaping (String?, Any?) -> Void) {
        guard let url = URL(string: loginURL) else {
            result("Invalid URL", nil)
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let requestBody: [String: Any] = [
            "username": userName,
            "password": password
            // "expiresInMins": 60 // optional
        ]

        do {
            let jsonData = try JSONSerialization.data(withJSONObject: requestBody)
            request.httpBody = jsonData
        } catch {
            print("Error converting request body to JSON: \(error)")
            result("Error converting request body to JSON: \(error)", nil)
          
            return
        }

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("error fetching data: \(error)")
                DispatchQueue.main.async {
                    result(error.localizedDescription, nil)
                }
                return
            }

            if let data = data {
                do {
                    let jsonResponse = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    DispatchQueue.main.async {
                        result(nil, jsonResponse)
                    }
                } catch {
                    print("Error parsing JSON response: \(error)")
                    DispatchQueue.main.async {
                        result("Error parsing JSON response: \(error)", nil)
                    }
                    
                }
            }
        }

        task.resume()
    }
    
    
    
    func fetchUserData(completion: @escaping (Result<UserResponse, Error>) -> Void) {
        
            var request = URLRequest(url: URL(string: "https://randomuser.me/api/")!,timeoutInterval: Double.infinity)
            request.httpMethod = "GET"
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                
                do{
                    let userData : UserResponse? = try JSONDecoder().decode(UserResponse.self, from: data!)
                    DispatchQueue.main.async {
                        completion(.success(userData!))
                    }
                    
                }catch{
                    DispatchQueue.main.sync{
                        print("1")
                        completion(.failure(error))
                        return
                    }
                   
                }
            }
            
            task.resume()
      
    }
    
    @MainActor
    func fetchUserDataWithAlmofire(completion : @escaping (Result<UserResponse, Error>)->Void ) async  {
        
        
            let response = await AF.request("https://randomuser.me/api/?nat=gb", interceptor: .retryPolicy).serializingDecodable(UserResponse.self).response
            
            if response.value != nil {
                return completion(.success(response.value!))
            }else{
                print(response.error as Any)
                return completion(.failure(response.error! ))
            }
            
            
        
        
        
        
    }
    
    
    

}
