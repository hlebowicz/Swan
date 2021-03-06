//
//  URLExtensionsTests.swift
//  Swan
//
//  Created by Antti Laitala on 22/11/15.
//
//

import Foundation
import Swan
import XCTest

class URLExtensionsTests: XCTestCase {

    func testQueryItemsDict() {
        var items = URL(string: "http://foo.bar?baz")!.queryItemsDict
        XCTAssert(items.count == 1)
        XCTAssertNil(items["baz"]!)

        items = URL(string: "http://foo.bar?a=50&b=&c&d=foo")!.queryItemsDict
        XCTAssert(items.count == 4)
        XCTAssert(items["a"]! == "50")
        XCTAssert(items["b"]! == "")
        XCTAssertNil(items["c"]!)
        XCTAssert(items["d"]! == "foo")
        
        items = URL(string: "http://foo.bar?a[]=foo&a[]=bar")!.queryItemsDict
        print(items)
    }
    
}
