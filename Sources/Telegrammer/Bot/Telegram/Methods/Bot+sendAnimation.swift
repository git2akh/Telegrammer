// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendAnimation` method
    struct SendAnimationParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Animation to send. Pass a file_id as String to send an animation that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an animation from the Internet, or upload a new animation using multipart/form-data. More info on Sending Files »
        var animation: FileInfo

        /// Duration of sent animation in seconds
        var duration: Int?

        /// Animation width
        var width: Int?

        /// Animation height
        var height: Int?

        /// Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
        var thumb: FileInfo?

        /// Animation caption (may also be used when resending animation by file_id), 0-1024 characters after entities parsing
        var caption: String?

        /// Mode for parsing entities in the animation caption. See formatting options for more details.
        var parseMode: ParseMode?

        /// A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
        var captionEntities: [MessageEntity]?

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

        /// Custom keys for coding/decoding `SendAnimationParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case animation = "animation"
            case duration = "duration"
            case width = "width"
            case height = "height"
            case thumb = "thumb"
            case caption = "caption"
            case parseMode = "parse_mode"
            case captionEntities = "caption_entities"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, animation: FileInfo, duration: Int? = nil, width: Int? = nil, height: Int? = nil, thumb: FileInfo? = nil, caption: String? = nil, parseMode: ParseMode? = nil, captionEntities: [MessageEntity]? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.animation = animation
            self.duration = duration
            self.width = width
            self.height = height
            self.thumb = thumb
            self.caption = caption
            self.parseMode = parseMode
            self.captionEntities = captionEntities
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.

     SeeAlso Telegram Bot API Reference:
     [SendAnimationParams](https://core.telegram.org/bots/api#sendanimation)
     
     - Parameters:
         - params: Parameters container, see `SendAnimationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendAnimation(params: SendAnimationParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendAnimation", body: body, headers: headers)
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
     Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.

     SeeAlso Telegram Bot API Reference:
     [SendAnimationParams](https://core.telegram.org/bots/api#sendanimation)
     
     - Parameters:
         - params: Parameters container, see `SendAnimationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendAnimation(params: SendAnimationParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendAnimation", body: body, headers: headers))
    }
}
#endif
