// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendVenue` method
    struct SendVenueParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Latitude of the venue
        var latitude: Float

        /// Longitude of the venue
        var longitude: Float

        /// Name of the venue
        var title: String

        /// Address of the venue
        var address: String

        /// Foursquare identifier of the venue
        var foursquareId: String?

        /// Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
        var foursquareType: String?

        /// Google Places identifier of the venue
        var googlePlaceId: String?

        /// Google Places type of the venue. (See supported types.)
        var googlePlaceType: String?

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

        /// Custom keys for coding/decoding `SendVenueParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case title = "title"
            case address = "address"
            case foursquareId = "foursquare_id"
            case foursquareType = "foursquare_type"
            case googlePlaceId = "google_place_id"
            case googlePlaceType = "google_place_type"
            case disableNotification = "disable_notification"
            case protectContent = "protect_content"
            case replyToMessageId = "reply_to_message_id"
            case allowSendingWithoutReply = "allow_sending_without_reply"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, latitude: Float, longitude: Float, title: String, address: String, foursquareId: String? = nil, foursquareType: String? = nil, googlePlaceId: String? = nil, googlePlaceType: String? = nil, disableNotification: Bool? = nil, protectContent: Bool? = nil, replyToMessageId: Int? = nil, allowSendingWithoutReply: Bool? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.latitude = latitude
            self.longitude = longitude
            self.title = title
            self.address = address
            self.foursquareId = foursquareId
            self.foursquareType = foursquareType
            self.googlePlaceId = googlePlaceId
            self.googlePlaceType = googlePlaceType
            self.disableNotification = disableNotification
            self.protectContent = protectContent
            self.replyToMessageId = replyToMessageId
            self.allowSendingWithoutReply = allowSendingWithoutReply
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send information about a venue. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendVenueParams](https://core.telegram.org/bots/api#sendvenue)
     
     - Parameters:
         - params: Parameters container, see `SendVenueParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendVenue(params: SendVenueParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendVenue", body: body, headers: headers)
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
     Use this method to send information about a venue. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendVenueParams](https://core.telegram.org/bots/api#sendvenue)
     
     - Parameters:
         - params: Parameters container, see `SendVenueParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendVenue(params: SendVenueParams) async throws -> Message {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "sendVenue", body: body, headers: headers))
    }
}
#endif
