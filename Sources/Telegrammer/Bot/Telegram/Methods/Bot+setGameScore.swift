// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Parameters container struct for `setGameScore` method
    struct SetGameScoreParams: JSONEncodable {

        /// User identifier
        var userId: Int64

        /// New score, must be non-negative
        var score: Int

        /// Pass True, if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
        var force: Bool?

        /// Pass True, if the game message should not be automatically edited to include the current scoreboard
        var disableEditMessage: Bool?

        /// Required if inline_message_id is not specified. Unique identifier for the target chat
        var chatId: Int64?

        /// Required if inline_message_id is not specified. Identifier of the sent message
        var messageId: Int?

        /// Required if chat_id and message_id are not specified. Identifier of the inline message
        var inlineMessageId: String?

        /// Custom keys for coding/decoding `SetGameScoreParams` struct
        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case score = "score"
            case force = "force"
            case disableEditMessage = "disable_edit_message"
            case chatId = "chat_id"
            case messageId = "message_id"
            case inlineMessageId = "inline_message_id"
        }

        public init(userId: Int64, score: Int, force: Bool? = nil, disableEditMessage: Bool? = nil, chatId: Int64? = nil, messageId: Int? = nil, inlineMessageId: String? = nil) {
            self.userId = userId
            self.score = score
            self.force = force
            self.disableEditMessage = disableEditMessage
            self.chatId = chatId
            self.messageId = messageId
            self.inlineMessageId = inlineMessageId
        }
    }

    /**
     Use this method to set the score of the specified user in a game. On success, if the message was sent by the bot, returns the edited Message, otherwise returns True. Returns an error, if the new score is not greater than the user's current score in the chat and force is False.

     SeeAlso Telegram Bot API Reference:
     [SetGameScoreParams](https://core.telegram.org/bots/api#setgamescore)
     
     - Parameters:
         - params: Parameters container, see `SetGameScoreParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func setGameScore(params: SetGameScoreParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<Bool>>
        response = try client.respond(endpoint: "setGameScore", body: body, headers: headers)
        return response.flatMap(to: Bool.self) { try self.wrap($0) }
    }
}