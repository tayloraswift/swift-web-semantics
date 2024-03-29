@_exported import WebResponse

#if swift(>=5.7)
@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public
protocol WebService<Request>:Sendable
{
    associatedtype Request:Sendable

    func serve(_ request:Request) async throws -> WebResponse
}
#elseif swift(>=5.5)
@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public
protocol WebService:Sendable
{
    associatedtype Request:Sendable

    func serve(_ request:Request) async throws -> WebResponse
}
#else
@available(*, unavailable, message: "WebService requires Swift >= 5.5")
public
protocol WebService
{
}
#endif