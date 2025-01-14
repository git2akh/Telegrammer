// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Describes a Web App.

 SeeAlso Telegram Bot API Reference:
 [WebAppInfo](https://core.telegram.org/bots/api#webappinfo)
 */
public final class WebAppInfo: Codable {

    /// Custom keys for coding/decoding `WebAppInfo` struct
    enum CodingKeys: String, CodingKey {
        case url = "url"
    }

    /// An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
    public var url: String

    public init (url: String) {
        self.url = url
    }
}
