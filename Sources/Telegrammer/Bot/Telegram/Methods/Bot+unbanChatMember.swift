// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `unbanChatMember` method
    struct UnbanChatMemberParams: JSONEncodable {

        /// Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Do nothing if the user is not banned
        var onlyIfBanned: Bool?

        /// Custom keys for coding/decoding `UnbanChatMemberParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
            case onlyIfBanned = "only_if_banned"
        }

        public init(chatId: ChatId, userId: Int64, onlyIfBanned: Bool? = nil) {
            self.chatId = chatId
            self.userId = userId
            self.onlyIfBanned = onlyIfBanned
        }
    }

    /**
     Use this method to unban a previously banned user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [UnbanChatMemberParams](https://core.telegram.org/bots/api#unbanchatmember)
     
     - Parameters:
         - params: Parameters container, see `UnbanChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func unbanChatMember(params: UnbanChatMemberParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "unbanChatMember", body: body, headers: headers)
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
     Use this method to unban a previously banned user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [UnbanChatMemberParams](https://core.telegram.org/bots/api#unbanchatmember)
     
     - Parameters:
         - params: Parameters container, see `UnbanChatMemberParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func unbanChatMember(params: UnbanChatMemberParams) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "unbanChatMember", body: body, headers: headers))
    }
}
#endif
