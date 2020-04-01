import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NSMaterialButtonTests.allTests),
    ]
}
#endif
