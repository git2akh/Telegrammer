// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Describes data sent from a Web App to the bot.

 SeeAlso Telegram Bot API Reference:
 [WebAppData](https://core.telegram.org/bots/api#webappdata)
 */
public final class WebAppData: Codable {

    /// Custom keys for coding/decoding `WebAppData` struct
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case buttonText = "button_text"
    }

    /// The data. Be aware that a bad client can send arbitrary data in this field.
    public var data: String

    /// Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
    public var buttonText: String

    public init (data: String, buttonText: String) {
        self.data = data
        self.buttonText = buttonText
    }
}
