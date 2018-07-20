//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: pages.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

public protocol Soseedy_SeedyPagesCreateCoursePageCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyPagesCreateCoursePageCallBase: ClientCallUnaryBase<Soseedy_CreateCoursePageRequest, Soseedy_Page>, Soseedy_SeedyPagesCreateCoursePageCall {
  override class var method: String { return "/soseedy.SeedyPages/CreateCoursePage" }
}


/// Instantiate Soseedy_SeedyPagesServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyPagesService: ServiceClient {
  /// Synchronous. Unary.
  func createCoursePage(_ request: Soseedy_CreateCoursePageRequest) throws -> Soseedy_Page
  /// Asynchronous. Unary.
  func createCoursePage(_ request: Soseedy_CreateCoursePageRequest, completion: @escaping (Soseedy_Page?, CallResult) -> Void) throws -> Soseedy_SeedyPagesCreateCoursePageCall

}

public final class Soseedy_SeedyPagesServiceClient: ServiceClientBase, Soseedy_SeedyPagesService {
  /// Synchronous. Unary.
  public func createCoursePage(_ request: Soseedy_CreateCoursePageRequest) throws -> Soseedy_Page {
    return try Soseedy_SeedyPagesCreateCoursePageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createCoursePage(_ request: Soseedy_CreateCoursePageRequest, completion: @escaping (Soseedy_Page?, CallResult) -> Void) throws -> Soseedy_SeedyPagesCreateCoursePageCall {
    return try Soseedy_SeedyPagesCreateCoursePageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
public protocol Soseedy_SeedyPagesProvider: ServiceProvider {
  func createCoursePage(request: Soseedy_CreateCoursePageRequest, session: Soseedy_SeedyPagesCreateCoursePageSession) throws -> Soseedy_Page
}

extension Soseedy_SeedyPagesProvider {
  public var serviceName: String { return "soseedy.SeedyPages" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  public func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/soseedy.SeedyPages/CreateCoursePage":
      return try Soseedy_SeedyPagesCreateCoursePageSessionBase(
        handler: handler,
        providerBlock: { try self.createCoursePage(request: $0, session: $1 as! Soseedy_SeedyPagesCreateCoursePageSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

public protocol Soseedy_SeedyPagesCreateCoursePageSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyPagesCreateCoursePageSessionBase: ServerSessionUnaryBase<Soseedy_CreateCoursePageRequest, Soseedy_Page>, Soseedy_SeedyPagesCreateCoursePageSession {}