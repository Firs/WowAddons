-- List of keywords to filter
local filterKeywords = {
    "gold",
    "boost",
    "wts",
    "wtb",
}

-- Function to filter messages
local function ChatFilter(self, event, message, sender, ...)
    for _, keyword in ipairs(filterKeywords) do
        if string.find(string.lower(message), keyword) then
	          -- print("Filtered message:", message, "from", sender)
            return true -- Suppress the message
        end
    end
    return false -- Show the message
end

-- Hook the filter to chat events
for _, chatType in ipairs({
    "CHAT_MSG_CHANNEL",
    "CHAT_MSG_SAY",
    "CHAT_MSG_YELL",
    "CHAT_MSG_WHISPER",
    "CHAT_MSG_PARTY",
    "CHAT_MSG_GUILD",
}) do
    ChatFrame_AddMessageEventFilter(chatType, ChatFilter)
end
