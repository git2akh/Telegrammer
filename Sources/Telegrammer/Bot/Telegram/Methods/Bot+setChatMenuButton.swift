// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `setChatMenuButton` method
    struct SetChatMenuButtonParams: JSONEncodable {

        /// Unique identifier for the target private chat. If not specified, default bot's menu button will be changed
        var chatId: Int64?

        /// A JSON-serialized object for the bot's new menu button. Defaults to MenuButtonDefault
        var menuButton: MenuButton?

        /// Custom keys for coding/decoding `SetChatMenuButtonParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case menuButton = "menu_button"
        }

        public init(chatId: Int64? = nil, menuButton: MenuButton? = nil) {
            self.chatId = chatId
            self.menuButton = menuButton
        }
    }

    /**
     Use this method to change the bot's menu button in a private chat, or the default menu button. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [SetChatMenuButtonParams](https://core.telegram.org/bots/api#setchatmenubutton)
     
     - Parameters:
         - params: Parameters container, see `SetChatMenuButtonParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func setChatMenuButton(params: SetChatMenuButtonParams? = nil) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "setChatMenuButton", body: body, headers: headers)
            .flatMapThrowing { (container) -> Bool in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     Use this method to change the bot's menu button in a private chat, or the default menu button. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [SetChatMenuButtonParams](https://core.telegram.org/bots/api#setchatmenubutton)
     
     - Parameters:
         - params: Parameters container, see `SetChatMenuButtonParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func setChatMenuButton(params: SetChatMenuButtonParams? = nil) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "setChatMenuButton", body: body, headers: headers))
    }
}
#endif
