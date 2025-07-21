# Shop System Datapack

A Simple Shop System for SMPs

## Installation

1. Download the latest version from https://github.com/jullevistrunz/shop-system-datapack/releases
2. Drag the ZIP into `<world folder>/datapacks`

## Usage

- Display amount of own credits: `/trigger seeCredits`
- Get shop chest: `/trigger shopChest`
- Get shop chest key: `/trigger shopChestKey`
- Set stack size for next shop sign: `/trigger shopStackSize set <size>`
- Convert sign to shop sign: `/trigger shopSign set <price>`

## Docs

### Shop Chest

A shop chest can be used to store items for sale. A shop chest can only be opened with a matching shop chest key. Shop chest and key are unique to their creator. The item may not be renamed and it will not drop when mined. In a double chest each site is treated as its own chest.

### Shop Chest Key

A shop chest key can be used to open a shop chest. Shop chest and key are unique to their creator. Be careful when sharing this item with other players. One shop chest key can open every shop chest of a player.

### Shop Stack-size

The shop stack-size determines to how many items the items used in the shop chest can stack. E.g. 16 for Armor Stands, 1 for Swords and 64 for a block of dirt. The default value is 64. At least on full stack has to be inside a shop chest to sell items.

### Shop Sign

A shop sign can be used to buy items stored in a shop chest by right-clicking it. The shop sign must be mounted in front of the shop chest (on the same y-level). To create a shop sign, stand inside a sign of your choice (foot or head level; same x- and z-level) and run this command: `/trigger shopSign set <price>`, with `<price>` being the price of a stack.

### Buying an item

When right-clicking a shop sign, one item stack from its shop chest will be removed and added to the inventory of the player clicking the shop sign. The player that created the shop sign will get the price added to their credits while the player clicking the shop sign will get the price removed from their credits.

### Selling an item

Place down a single shop chest, set the desired stack size and attach a sign of your choice to the shop chest. Convert the sign to a shop sign and fill the shop chest with enough stacks of items.

## How to earn credits

- By selling items using the shop system
- Hourly: $20
