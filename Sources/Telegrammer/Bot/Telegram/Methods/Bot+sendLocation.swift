// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendLocation` method
    struct SendLocationParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Latitude of the location
        var latitude: Float

        /// Longitude of the location
        var longitude: Float

        /// The radius of uncertainty for the location, measured in meters; 0-1500
        var horizontalAccuracy: Float?

        /// Period in seconds for which the location will be updated (see Live Locations, should be between 60 and 86400.
        var livePeriod: Int?

        /// For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
        var heading: Int?

        /// For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
        var proximityAlertRadius: Int?

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

        /// Custom keys for coding/decoding `SendLocationParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case horizontalAccuracy = "horizontal_accuracy"
            case livePeriod = "live_period"
            case heading = "heading"
            case proximityAlertRadius = "proximity_alert_radius"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, latitude: Float, longitude: Float, horizontalAccuracy: Float? = nil, livePeriod: Int? = nil, heading: Int? = nil, proximityAlertRadius: Int? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.latitude = latitude
            self.longitude = longitude
            self.horizontalAccuracy = horizontalAccuracy
            self.livePeriod = livePeriod
            self.heading = heading
            self.proximityAlertRadius = proximityAlertRadius
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send point on the map. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendLocationParams](https://core.telegram.org/bots/api#sendlocation)
     
     - Parameters:
         - params: Parameters container, see `SendLocationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendLocation(params: SendLocationParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendLocation", body: body, headers: headers)
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
     Use this method to send point on the map. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendLocationParams](https://core.telegram.org/bots/api#sendlocation)
     
     - Parameters:
         - params: Parameters container, see `SendLocationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendLocation(params: SendLocationParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendLocation", body: body, headers: headers))
    }
}
#endif
