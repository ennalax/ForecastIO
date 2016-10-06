//
//  RequestMetadataTests.swift
//  ForecastIO
//
//  Created by Satyam Ghodasara on 10/3/16.
//
//

import XCTest
@testable import ForecastIO

class RequestMetadataTests: XCTestCase {
    
    func testInitFromHTTPHeaderFields() {
        //  Given
        let httpHeaderFields = ["Cache-Control": "max-age=60", "X-Forecast-API-Calls": "12", "X-Response-Time": "123.45ms"]
        
        //  When
        let requestMetadata = RequestMetadata(fromHTTPHeaderFields: httpHeaderFields)
        
        //  Then
        XCTAssertNotNil(requestMetadata)
        XCTAssertEqual(requestMetadata.cacheControl, "max-age=60")
        XCTAssertEqual(requestMetadata.apiRequestsCount, 12)
        XCTAssertEqual(requestMetadata.responseTime, 123.45)
    }
    
}

