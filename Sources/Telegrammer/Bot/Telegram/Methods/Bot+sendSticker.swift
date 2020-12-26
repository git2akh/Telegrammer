// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendSticker` method
    struct SendStickerParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Sticker to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a .WEBP file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
        var sticker: FileInfo

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Pass True, if the message should be sent even if the specified replied-to message is not found
        var allowSendingWithoutReply: Bool?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendStickerParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case sticker = "sticker"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, sticker: FileInfo, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.sticker = sticker
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send static .WEBP or animated .TGS stickers. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendStickerParams](https://core.telegram.org/bots/api#sendsticker)
     
     - Parameters:
         - params: Parameters container, see `SendStickerParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendSticker(params: SendStickerParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendSticker", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}
