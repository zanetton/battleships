Battleships:
===========

Game Description:
-----------

The game is typically  played on four grids,usually 10x10 in size, two for each player(2 players). One grid is used to position the ships and record the opponent's shots, and the other is to record your own shots on your opponent.The grids are usually marked with letters (A,B,C,D,E,F,G,H,I,j) and numbers (1-10)

Before the game begins, each player secretly arranges their ships. Each ship occupies a specific number of squares on the grid=depeding on the ship size. Each player has the same number of ships. For the sake of this model we will assume the following ships and sizes.

Ship_categorie_and_size = { aircraft_carrier: 5,
battleship: 4,
submarine: 3,
destroyer: 3,
patrol_boat: 2,
}

After the ships have been positioned, the game proceeds with a series of rounds where oppenents call a shot on a specific square
e.g "A5" to which the opponent responds "hit" or "miss" depending on where the shot lands (boat, water).When all of the squares of a ship have been hit, the ship is sunk, and the ship's owner announces this (e.g. "You sank my battleship!"). As mentioned above the second grid is to record one's shots so that one may map out his opponent's ship layout. The point of the game is to wipe out your opponent's ship fleet.

CRC Model:
----------

-Ship:

have the choice of  an  aircraft_carrier (length 5), a battleship (length 4), a submarine (length 3), a destroyer (length 3) and a patrol_boat(length 2).
is a made by coordinates that can be hit by the opponent.
must sink when hit all over its length.
must not overlap
must remain contained to board dimensions(10x10 squares)

-Grid:

defines a 10x10 square.
identifies positions by two coordinates e.g (A10,B6,D4)
only shows the attacker their shots.(this could include their shot history)
only shows the defender their ships, and the shots from the attacker.


- Coordinate:

stores all the coordinates related to the ships.
translates all the coordinates entered by the user to indexes understandable by the application.

-Player:

has two grids, one to keep ships(main), one to show hits and misses.
has 5 ships.
places ships on the main grid.
can either attack or defend.

Collaborators: Ship, Grid, Coordinate

-BattleShip:

handles a new BattleShip game with two Players.
allows a player to place ships on his board.
allows a player to shoot at the opponents board.
report if a player has won the game.

Collaborators: Player
