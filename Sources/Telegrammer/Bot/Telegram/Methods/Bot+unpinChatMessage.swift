// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `unpinChatMessage` method
    struct UnpinChatMessageParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Identifier of a message to unpin. If not specified, the most recent pinned message (by sending date) will be unpinned.
        var messageId: Int?

        /// Custom keys for coding/decoding `UnpinChatMessageParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case messageId = "message_id"
        }

        public init(chatId: ChatId, messageId: Int? = nil) {
            self.chatId = chatId
            self.messageId = messageId
        }
    }

    /**
     Use this method to remove a message from the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [UnpinChatMessageParams](https://core.telegram.org/bots/api#unpinchatmessage)
     
     - Parameters:
         - params: Parameters container, see `UnpinChatMessageParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func unpinChatMessage(params: UnpinChatMessageParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "unpinChatMessage", body: body, headers: headers)
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
     Use this method to remove a message from the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [UnpinChatMessageParams](https://core.telegram.org/bots/api#unpinchatmessage)
     
     - Parameters:
         - params: Parameters container, see `UnpinChatMessageParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func unpinChatMessage(params: UnpinChatMessageParams) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "unpinChatMessage", body: body, headers: headers))
    }
}
#endif
