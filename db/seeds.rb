Photo.create(
  [ {url: 'beach.jpg', title: 'On the Beach'},
    {url: 'department_store.jpg', title: 'Department Store'},
    {url: 'fishing.jpg', title: 'Deep Sea Divers'},
    {url: 'football.jpg', title: 'Ye Olde Football'},
    {url: 'gobbling_glutton.jpg', title: 'Gobbling Gutton'},
    {url: 'maze.jpg', title: 'The Great Escape'},
    {url: 'street.jpg', title: 'City Block'}
  ]
)

Character.create(
  [ {name: 'Waldo'},
    {name: 'Wizard Whitebeard'},
    {name: 'Wenda'},
    {name: 'Odlaw'},
  ]
)

# on the beach
photo = Photo.find_by(title: 'On the Beach')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 885, top_y: 314, bottom_x: 908, bottom_y: 358)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 132, top_y: 293, bottom_x: 141, bottom_y: 321)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 1118, top_y: 347, bottom_x: 1132, bottom_y: 366)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 373, top_y: 292, bottom_x: 388, bottom_y: 327)

# department store
photo = Photo.find_by(title: 'Department Store')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 1158, top_y: 295, bottom_x: 1139, bottom_y: 377)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 537, top_y: 1255, bottom_x: 565, bottom_y: 1325)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 820, top_y: 1271, bottom_x: 848, bottom_y: 1329)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 1913, top_y: 58, bottom_x: 1945, bottom_y: 103)

# deep sea divers
photo = Photo.find_by(title: 'Deep Sea Divers')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 751, top_y: 256, bottom_x: 773, bottom_y: 335)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 344, top_y: 392, bottom_x: 371, bottom_y: 432)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 1098, top_y: 197, bottom_x: 1117, bottom_y: 259)

# football
photo = Photo.find_by(title: 'Ye Olde Football')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 1191, top_y: 59, bottom_x: 1934, bottom_y: 108)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 1830, top_y: 717, bottom_x: 1852, bottom_y: 782)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 555, top_y: 834, bottom_x: 580, bottom_y: 877)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 573, top_y: 491, bottom_x: 611, bottom_y: 596)

# gobbling glutton
photo = Photo.find_by(title: 'Gobbling Gutton')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 1582, top_y: 595, bottom_x: 1815, bottom_y: 670)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 1109, top_y: 1038, bottom_x: 1145, bottom_y: 1099)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 1076, top_y: 556, bottom_x: 1102, bottom_y: 610)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 2358, top_y: 1461, bottom_x: 2410, bottom_y: 1567)

# the great escape
photo = Photo.find_by(title: 'The Great Escape')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 1420, top_y: 728, bottom_x: 1439, bottom_y: 755)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 1108, top_y: 540, bottom_x: 1127, bottom_y: 570)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 1910, top_y: 890, bottom_x: 1933, bottom_y: 915)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 1693, top_y: 518, bottom_x: 1714, bottom_y: 549)

# street
photo = Photo.find_by(title: 'City Block')
character = Character.find_by(name: 'Waldo')
PhotosCharacter.create(photo: photo, character: character, top_x: 860, top_y: 927, bottom_x: 897, bottom_y: 1004)
character = Character.find_by(name: 'Odlaw')
PhotosCharacter.create(photo: photo, character: character, top_x: 1192, top_y: 1192, bottom_x: 1215, bottom_y: 1222)
character = Character.find_by(name: 'Wenda')
PhotosCharacter.create(photo: photo, character: character, top_x: 881, top_y: 749, bottom_x: 905, bottom_y: 789)
character = Character.find_by(name: 'Wizard Whitebeard')
PhotosCharacter.create(photo: photo, character: character, top_x: 1328, top_y: 966, bottom_x: 1354, bottom_y: 998)