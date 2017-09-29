Photo.create(
  [ {url: 'beach.jpg', title: 'On the Beach'},
    {url: 'department_store.jpg', title: 'Department Store'},
    {url: 'fishing.jpg', title: 'Gone Fishing'},
    {url: 'football.jpg', title: 'Ye Olde Football'},
    {url: 'gobbling_glutton.jpg', title: 'Gobbling Gutton'},
    {url: 'maze.jpg', title: 'AMAZEing'},
    {url: 'Romans.jpg', title: 'What have the Romans ever done for us?'},
    {url: 'street.jpg', title: 'City Block'}
  ]
)

Character.create(
  [ {name: 'Waldo'},
    {name: 'Wizard Whitebeard'},
    {name: 'Wenda'},
    {name: 'Odlaw'},
    {name: 'Woof'}
  ]
)

beach = Photo.find_by(title: 'On the Beach')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: beach, character: character, top_x: 885, top_y: 314, bottom_x: 908, bottom_y: 358)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: beach, character: character, top_x: 132, top_y: 293, bottom_x: 141, bottom_y: 321)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: beach, character: character, top_x: 1118, top_y: 347, bottom_x: 1132, bottom_y: 366)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: beach, character: character, top_x: 373, top_y: 392, bottom_x: 388, bottom_y: 327)