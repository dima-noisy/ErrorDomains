import Foundation

enum ApiError: Error {
    case badRequest
    case notFound
    case unAuth
    case unowned
    case forbidden
}
