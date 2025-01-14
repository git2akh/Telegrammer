// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `deleteChatStickerSet` method
    struct DeleteChatStickerSetParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
        var chatId: ChatId

        /// Custom keys for coding/decoding `DeleteChatStickerSetParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
        }

        public init(chatId: ChatId) {
            self.chatId = chatId
        }
    }

    /**
     Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [DeleteChatStickerSetParams](https://core.telegram.org/bots/api#deletechatstickerset)
     
     - Parameters:
         - params: Parameters container, see `DeleteChatStickerSetParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func deleteChatStickerSet(params: DeleteChatStickerSetParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "deleteChatStickerSet", body: body, headers: headers)
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
     Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [DeleteChatStickerSetParams](https://core.telegram.org/bots/api#deletechatstickerset)
     
     - Parameters:
         - params: Parameters container, see `DeleteChatStickerSetParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func deleteChatStickerSet(params: DeleteChatStickerSetParams) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "deleteChatStickerSet", body: body, headers: headers))
    }
}
#endif
