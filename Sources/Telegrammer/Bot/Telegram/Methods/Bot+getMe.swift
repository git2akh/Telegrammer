// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /**
     A simple method for testing your bot's authentication token. Requires no parameters. Returns basic information about the bot in form of a User object.

     SeeAlso Telegram Bot API Reference:
     [GetMeParams](https://core.telegram.org/bots/api#getme)
     
     - Parameters:
         - params: Parameters container, see `GetMeParams` struct
     - Throws: Throws on errors
     - Returns: Future of `User` type
     */
    @discardableResult
    func getMe() throws -> Future<User> {
        return try client
            .request(endpoint: "getMe")
            .flatMapThrowing { (container) -> User in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     A simple method for testing your bot's authentication token. Requires no parameters. Returns basic information about the bot in form of a User object.

     SeeAlso Telegram Bot API Reference:
     [GetMeParams](https://core.telegram.org/bots/api#getme)
     
     - Parameters:
         - params: Parameters container, see `GetMeParams` struct
     - Throws: Throws on errors
     - Returns: Future of `User` type
     */
    @discardableResult
    func getMe() async throws -> User {
        return try self.processContainer(try await client.request(endpoint: "getMe"))
    }
}
#endif
