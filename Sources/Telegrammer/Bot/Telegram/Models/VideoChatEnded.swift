// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a service message about a video chat ended in the chat.

 SeeAlso Telegram Bot API Reference:
 [VideoChatEnded](https://core.telegram.org/bots/api#videochatended)
 */
public final class VideoChatEnded: Codable {

    /// Custom keys for coding/decoding `VideoChatEnded` struct
    enum CodingKeys: String, CodingKey {
        case duration = "duration"
    }

    /// Video chat duration in seconds
    public var duration: Int

    public init (duration: Int) {
        self.duration = duration
    }
}
