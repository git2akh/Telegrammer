// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `addStickerToSet` method
    struct AddStickerToSetParams: MultipartEncodable {

        /// User identifier of sticker set owner
        var userId: Int64

        /// Sticker set name
        var name: String

        /// PNG image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
        var pngSticker: FileInfo?

        /// TGS animation with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#animated-sticker-requirements for technical requirements
        var tgsSticker: InputFile?

        /// WEBM video with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#video-sticker-requirements for technical requirements
        var webmSticker: InputFile?

        /// One or more emoji corresponding to the sticker
        var emojis: String

        /// A JSON-serialized object for position where the mask should be placed on faces
        var maskPosition: MaskPosition?

        /// Custom keys for coding/decoding `AddStickerToSetParams` struct
        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case name = "name"
            case pngSticker = "png_sticker"
            case tgsSticker = "tgs_sticker"
            case webmSticker = "webm_sticker"
            case emojis = "emojis"
            case maskPosition = "mask_position"
        }

        public init(userId: Int64, name: String, pngSticker: FileInfo? = nil, tgsSticker: InputFile? = nil, webmSticker: InputFile? = nil, emojis: String, maskPosition: MaskPosition? = nil) {
            self.userId = userId
            self.name = name
            self.pngSticker = pngSticker
            self.tgsSticker = tgsSticker
            self.webmSticker = webmSticker
            self.emojis = emojis
            self.maskPosition = maskPosition
        }
    }

    /**
     Use this method to add a new sticker to a set created by the bot. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [AddStickerToSetParams](https://core.telegram.org/bots/api#addstickertoset)
     
     - Parameters:
         - params: Parameters container, see `AddStickerToSetParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func addStickerToSet(params: AddStickerToSetParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "addStickerToSet", body: body, headers: headers)
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
     Use this method to add a new sticker to a set created by the bot. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [AddStickerToSetParams](https://core.telegram.org/bots/api#addstickertoset)
     
     - Parameters:
         - params: Parameters container, see `AddStickerToSetParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func addStickerToSet(params: AddStickerToSetParams) async throws -> Bool {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try self.processContainer(try await client.request(endpoint: "addStickerToSet", body: body, headers: headers))
    }
}
#endif
