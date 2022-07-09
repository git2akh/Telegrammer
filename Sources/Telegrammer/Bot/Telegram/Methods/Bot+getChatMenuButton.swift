// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `getChatMenuButton` method
    struct GetChatMenuButtonParams: JSONEncodable {

        /// Unique identifier for the target private chat. If not specified, default bot's menu button will be returned
        var chatId: Int64?

        /// Custom keys for coding/decoding `GetChatMenuButtonParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
        }

        public init(chatId: Int64? = nil) {
            self.chatId = chatId
        }
    }

    /**
     Use this method to get the current value of the bot's menu button in a private chat, or the default menu button. Returns MenuButton on success.

     SeeAlso Telegram Bot API Reference:
     [GetChatMenuButtonParams](https://core.telegram.org/bots/api#getchatmenubutton)
     
     - Parameters:
         - params: Parameters container, see `GetChatMenuButtonParams` struct
     - Throws: Throws on errors
     - Returns: Future of `MenuButton` type
     */
    @discardableResult
    func getChatMenuButton(params: GetChatMenuButtonParams? = nil) throws -> Future<MenuButton> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "getChatMenuButton", body: body, headers: headers)
            .flatMapThrowing { (container) -> MenuButton in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     Use this method to get the current value of the bot's menu button in a private chat, or the default menu button. Returns MenuButton on success.

     SeeAlso Telegram Bot API Reference:
     [GetChatMenuButtonParams](https://core.telegram.org/bots/api#getchatmenubutton)
     
     - Parameters:
         - params: Parameters container, see `GetChatMenuButtonParams` struct
     - Throws: Throws on errors
     - Returns: Future of `MenuButton` type
     */
    @discardableResult
    func getChatMenuButton(params: GetChatMenuButtonParams? = nil) async throws -> MenuButton {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "getChatMenuButton", body: body, headers: headers))
    }
}
#endif