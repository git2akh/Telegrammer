// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendMessage` method
    struct SendMessageParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Text of the message to be sent, 1-4096 characters after entities parsing
        var text: String

        /// Mode for parsing entities in the message text. See formatting options for more details.
        var parseMode: ParseMode?

        /// A JSON-serialized list of special entities that appear in message text, which can be specified instead of parse_mode
        var entities: [MessageEntity]?

        /// Disables link previews for links in this message
        var disableWebPagePreview: Bool?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// Protects the contents of the sent message from forwarding and saving
        var protectContent: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendMessageParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case text = "text"
            case parseMode = "parse_mode"
            case entities = "entities"
            case disableWebPagePreview = "disable_web_page_preview"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, text: String, parseMode: ParseMode? = nil, entities: [MessageEntity]? = nil, disableWebPagePreview: Bool? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.text = text
            self.parseMode = parseMode
            self.entities = entities
            self.disableWebPagePreview = disableWebPagePreview
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send text messages. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendMessageParams](https://core.telegram.org/bots/api#sendmessage)
     
     - Parameters:
         - params: Parameters container, see `SendMessageParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendMessage(params: SendMessageParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendMessage", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}

// MARK: Concurrency Support
#if compiler(>=5.5)
@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
public extension Bot {

    /**
     Use this method to send text messages. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendMessageParams](https://core.telegram.org/bots/api#sendmessage)
     
     - Parameters:
         - params: Parameters container, see `SendMessageParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendMessage(params: SendMessageParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendMessage", body: body, headers: headers))
    }
}
#endif
