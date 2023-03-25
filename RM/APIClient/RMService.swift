//
//  RMService.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/25/23.
//

import Foundation

final class RMService {
    
    static let shared = RMService()
    
    private init() {}
    
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
