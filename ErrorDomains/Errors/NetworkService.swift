import UIKit

typealias ImageResult = Result<UIImage, ApiError>

let urlStringGlobal = "https://yandex.ru/api/v.2.4/user/userPhoto"

final class NetworkService {

    func getPhoto(stringUrl: String) throws -> UIImage {
        if stringUrl == urlStringGlobal {
            print("Done")
            return UIImage()
        } else if stringUrl == "https" {
            throw ApiError.badRequest
        } else if stringUrl == "" {
            throw ApiError.notFound
        } else {
            throw ApiError.unowned
        }
    }
    
    func getNetworkRequest(stringUrl: String, completion: @escaping (ImageResult) -> Void) {

        // completion - ожидает -> возвращает при получении ответа с бэка

        if stringUrl == urlStringGlobal {
            print("Good")
            completion(.success(UIImage()))
        } else if stringUrl == "https" {
            completion(.failure(.badRequest))
        } else if stringUrl == "" {
            completion(.failure(.notFound))
        } else {
            completion(.failure(.unowned))
        }
        
    }
}
