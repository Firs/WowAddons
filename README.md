# ChatFilter Addon for World of Warcraft Classic Era

**ChatFilter** is a minimalistic World of Warcraft Classic Era addon that filters out chat messages containing specific keywords. It helps clean up your chat by suppressing spam or unwanted messages across multiple channels.

---

## Features
- Suppresses chat messages containing customizable keywords.
- Works across all major chat channels, including:
  - General
  - Trade
  - Party
  - Guild
  - Whisper
- Lightweight and efficient.

---

## Installation

### Manual
1. [Download the latest release](https://github.com/Firs/ChatFilter/releases).
2. Extract the `.zip` file to your WoW Classic Era AddOns directory:
   - For Windows:  
     `C:\Program Files (x86)\World of Warcraft\_classic_era_\Interface\AddOns\`
   - For macOS:  
     `/Applications/World of Warcraft/_classic_era_/Interface/AddOns/`
3. Ensure the folder structure is:  
   `Interface/AddOns/ChatFilter/ChatFilter.toc`
4. Restart the game.
5. Enable the addon from the **AddOns** menu at the character selection screen.

---

## Configuration

1. Open `ChatFilter.lua` in any text editor.
2. Modify the `filterKeywords` table to include or remove keywords:
   ```lua
   local filterKeywords = {
       "gold",
       "boost",
       "wts",
       "wtb",
       "carry",
   }
