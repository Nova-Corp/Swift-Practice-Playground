import XCTest


class BreakFast {
    init(type: String) {
        
    }
    
    convenience init() {
        self.init()
    }
}

class Simple_Addition_TaskTests: XCTestCase {
    
    var fc = FirstClass()
    
    override func setUp() {
        super.setUp()
    }
    
    func test_is_valid_input_number() throws {
        XCTAssertEqual(1, fc.getInt())
    }
    
}


class FirstClass {
    func getInt() -> Int{
        return 5
    }
}

