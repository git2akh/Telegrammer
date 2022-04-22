// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 This object represents a service message about a video chat scheduled in the chat.

 SeeAlso Telegram Bot API Reference:
 [VideoChatScheduled](https://core.telegram.org/bots/api#videochatscheduled)
 */
public final class VideoChatScheduled: Codable {

    /// Custom keys for coding/decoding `VideoChatScheduled` struct
    enum CodingKeys: String, CodingKey {
        case startDate = "start_date"
    }

    /// Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
    public var startDate: Int

    public init (startDate: Int) {
        self.startDate = startDate
    }
}
