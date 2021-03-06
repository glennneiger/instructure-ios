//
// Copyright (C) 2017-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest

class CKIDiscussionTopicNetworkingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testFetchDiscussionTopicsForContext() {
        let client = MockCKIClient()
        let courseDictionary = Helpers.loadJSONFixture("course") as NSDictionary
        let course = CKICourse(fromJSONDictionary: courseDictionary)
        
        client.fetchDiscussionTopicsForContext(course)
        XCTAssertEqual(client.capturedPath!, "/api/v1/courses/1/discussion_topics", "CKIDiscussionTopic returned API path for testFetchDiscussionTopicsForContext was incorrect")
        XCTAssertEqual(client.capturedMethod!, MockCKIClient.Method.Fetch, "CKIDiscussionTopic API Interaction Method was incorrect")
    }
    
    func testFetchDiscussionTopicForContextTopicID() {
        let client = MockCKIClient()
        let courseDictionary = Helpers.loadJSONFixture("course") as NSDictionary
        let course = CKICourse(fromJSONDictionary: courseDictionary)
        let topicID = "7"
        
        client.fetchDiscussionTopicForContext(course, topicID: topicID)
        XCTAssertEqual(client.capturedPath!, "/api/v1/courses/1/discussion_topics/7", "CKIDiscussionTopic returned API path for testFetchDiscussionTopicForContextTopicID was incorrect")
        XCTAssertEqual(client.capturedMethod!, MockCKIClient.Method.Fetch, "CKIDiscussionTopic API Interaction Method was incorrect")
    }
    
    func testFetchAnnouncementsForContext() {
        let client = MockCKIClient()
        let courseDictionary = Helpers.loadJSONFixture("course") as NSDictionary
        let course = CKICourse(fromJSONDictionary: courseDictionary)
        
        client.fetchAnnouncementsForContext(course)
        XCTAssertEqual(client.capturedPath!, "/api/v1/courses/1/discussion_topics", "CKIDiscussionTopic returned API path for testFetchAnnouncementsForContext was incorrect")
        XCTAssertEqual(client.capturedMethod!, MockCKIClient.Method.Fetch, "CKIDiscussionTopic API Interaction Method was incorrect")
    }
}
