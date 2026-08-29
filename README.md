# SimpleDenyManager

**SimpleDenyManager** is a control utility built for World of Warcraft Vanilla (1.12.1) specifically tailored for the Microbot Server. It provides an intuitive graphical interface to manage, allow, or restrict class-specific companion bot spells using the server's native custom commands.

## Features
* **Full Class Spell Support:** Features extensive, built-in spell lists for all 9 playable classes.
* **Mass Configuration:** Quickly toggle single spells, wipe choices via "Reset Class Spells", or mute an entire kit via "Deactivate All Spells".
* **Automated Bot Whispering:** Automatically scans active companion bots via server addon messages and whispers the correct `deny add/remove` rules directly to them.
* **Minimap Integration:** Features a gear icon on the minimap for quick window toggling, supporting full circular dragging.

## Controls & Usage
* **Class Grid Menu:** Click any class button to enter its comprehensive spell management view.
* **Spell Buttons:** Click a spell to toggle its state. Red buttons indicate an active spell restriction, while Grey buttons show deactivated limits.
* **Left-Click** (Minimap Gear): Opens or closes the manager window.
* **Left-Mouse Drag** (Minimap Gear): Move your mouse to reposition the gear around the minimap.

## Slash Commands
You can also toggle the main configuration panel using this chat command:
* `/sdm`

## Installation
1. Download the addon.
2. Extract the folder into your World of Warcraft directory: `World of Warcraft\Interface\AddOns\`
3. Restart the game or reload your interface.

## Author & Version
* **Author:** Sepirox-Burandir with Google-AI Assistant
* **Version:** 1.0 (Vanilla WoW)
