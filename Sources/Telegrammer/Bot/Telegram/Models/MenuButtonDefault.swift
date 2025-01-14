// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Describes that no specific value for the menu button was set.

 SeeAlso Telegram Bot API Reference:
 [MenuButtonDefault](https://core.telegram.org/bots/api#menubuttondefault)
 */
public final class MenuButtonDefault: Codable {

    /// Custom keys for coding/decoding `MenuButtonDefault` struct
    enum CodingKeys: String, CodingKey {
        case type = "type"
    }

    /// Type of the button, must be default
    public var type: String

    public init (type: String) {
        self.type = type
    }
}
