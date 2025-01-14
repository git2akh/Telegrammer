// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendDice` method
    struct SendDiceParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Emoji on which the dice throw animation is based. Currently, must be one of “”, “”, “”, “”, “”, or “”. Dice can have values 1-6 for “”, “” and “”, values 1-5 for “” and “”, and values 1-64 for “”. Defaults to “”
        var emoji: String?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// Protects the contents of the sent message from forwarding
        var protectContent: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendDiceParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case emoji = "emoji"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, emoji: String? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.emoji = emoji
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendDiceParams](https://core.telegram.org/bots/api#senddice)
     
     - Parameters:
         - params: Parameters container, see `SendDiceParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendDice(params: SendDiceParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendDice", body: body, headers: headers)
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
     Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendDiceParams](https://core.telegram.org/bots/api#senddice)
     
     - Parameters:
         - params: Parameters container, see `SendDiceParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendDice(params: SendDiceParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendDice", body: body, headers: headers))
    }
}
#endif
