// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `approveChatJoinRequest` method
    struct ApproveChatJoinRequestParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Unique identifier of the target user
        var userId: Int64

        /// Custom keys for coding/decoding `ApproveChatJoinRequestParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case userId = "user_id"
        }

        public init(chatId: ChatId, userId: Int64) {
            self.chatId = chatId
            self.userId = userId
        }
    }

    /**
     Use this method to approve a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [ApproveChatJoinRequestParams](https://core.telegram.org/bots/api#approvechatjoinrequest)
     
     - Parameters:
         - params: Parameters container, see `ApproveChatJoinRequestParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func approveChatJoinRequest(params: ApproveChatJoinRequestParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "approveChatJoinRequest", body: body, headers: headers)
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
     Use this method to approve a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [ApproveChatJoinRequestParams](https://core.telegram.org/bots/api#approvechatjoinrequest)
     
     - Parameters:
         - params: Parameters container, see `ApproveChatJoinRequestParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func approveChatJoinRequest(params: ApproveChatJoinRequestParams) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "approveChatJoinRequest", body: body, headers: headers))
    }
}
#endif
