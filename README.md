# SimpleDenyManager

**SimpleDenyManager** is a lightweight control utility for **World of Warcraft Vanilla (1.12.1)**, specifically designed for the **Microbot Server**.

It provides an intuitive graphical interface for managing, allowing, and restricting **class-specific companion bot spells** through the server's native custom commands.

---

## ✨ Features

* **🎯 Full Class Spell Support**
  Built-in spell lists for all **9 playable classes**.

* **⚙️ Mass Configuration**
  Quickly toggle individual spells, reset a class with **Reset Class Spells**, or disable an entire spell kit with **Deactivate All Spells**.

* **💬 Automated Bot Whispering**
  Automatically scans active companion bots through server addon messages and sends the appropriate `deny add/remove` commands directly to them.

* **🛑 Minimap Integration**
  Includes a Stop Sign icon on the minimap for quick access to the manager window, with full circular dragging support.

---

## 🎮 Controls & Usage

### Class Grid Menu

Click any class button to open its spell management panel.

### Spell Buttons

Click a spell to toggle its restriction state:

* 🔴 **Red** — The spell is not restricted.
* ⚪ **Grey** — The spell is currently restricted.

### Minimap Button

* **Left-Click** — Open or close the SimpleDenyManager window.
* **Left-Click + Drag** — Move the Stop Sign icon around the minimap.

---

## 💬 Slash Commands

Open or close the main configuration panel using:

```text
/sdm
```

---

## 📦 Installation

1. Download **SimpleDenyManager**.

2. Extract the addon folder into your World of Warcraft AddOns directory:

   ```text
   World of Warcraft\Interface\AddOns\
   ```

3. Start World of Warcraft.

4. If the game is already running, reload your interface or restart the game.

---

# 📋 Changelog

## Version 1.1

### 🎯 Targeting Function

You can now **deny or enable spells for a specific companion**, provided that the targeted companion belongs to the class currently selected in the menu.

### Scenario A — No Target

When no companion is targeted, SimpleDenyManager works as before:

* Denies or enables the selected spell for **all companions of the selected class**.
* The UI displays the current **general class setting**.

### Scenario B — Targeted Companion Is the Same Class

If your target belongs to the same class currently selected in the menu:

1. SimpleDenyManager checks the target's current deny list using the `list Deny` whisper command.
2. The UI displays which spells are currently active or inactive for that companion.
3. Clicking a spell denies or enables it **only for the targeted companion**.
4. The UI reflects the target's current settings.

### Scenario C — Targeted Companion Is a Different Class

If your target belongs to a different class than the one currently selected:

* SimpleDenyManager operates using the normal **class-wide settings**.
* Denies or enables the selected spell for **all companions of the selected class**.
* The UI displays the current general class setting.

---

## 🐛 Minor Fixes — Warlock

* Removed **Summon Tyran** — the spell does not exist in Vanilla WoW.
* Added **Inferno** summon.
* Corrected several spell names.

---

## 👤 Author & Version

**Author:** Sepirox-Burandir
**Version:** 1.1 — Vanilla WoW 1.12.1

Developed with assistance from **Grok** and **Google AI Assistant**.
