'use strict'

let photo
let naturalWidth
let naturalHeight
let characters
const responseMessage = document.createElement('div')
responseMessage.classList.add('response')
responseMessage.classList.add('hidden')

const currentMousePosition = {
  x: 0,
  y: 0
}

const removeElement = (element) => {
  element.parentNode.removeChild(element)
}

const hasClass = (el, className) => {
  return el.classList.contains(className)
}

const addClass = (el, className) => {
  el.classList.add(className);
}

const removeClass = (el, className) => {
  el.classList.remove(className);
}

const toggle = (el, className) => {
    hasClass(el, className) ? removeClass(el, className) : addClass(el, className);
}

const searchForCharacter = (characterList, characterName) => {
  return characterList.filter(character => {
    return character['character']['name'] === characterName
  }).shift()
}

const match = (character, photoWidth, photoHeight, naturalWidth, naturalHeight, clickX, clickY) => {
  const widthIncrease = naturalWidth / photoWidth
  const heightIncrease = naturalHeight / photoHeight
  const xIncrease = clickX * widthIncrease
  const yIncrease = clickY * heightIncrease
  const xWithinBounds = xIncrease > character.top_x && xIncrease < character.bottom_x
  const yWithinBounds = yIncrease > character.top_y && yIncrease < character.bottom_y
  return xWithinBounds && yWithinBounds
}

const respond = (matched, characterName) => {
  responseMessage.innerHTML = ''
  if(matched) {
    const charPhoto = document.getElementById(characterName)
    charPhoto.style.opacity = 0.3
    characters.splice( characters.indexOf(characterName), 1 )
    responseMessage.innerHTML = `Success. Located ${characterName}`
  } else {
    responseMessage.innerHTML = 'No match here'
  }
  toggle(responseMessage, 'hidden')
  setTimeout(() => {
    toggle(responseMessage, 'hidden')
  }, 1000)
}

const winner = () => {
  return characters.length === 0
}


const characterClick = (e) => {
  const modal = document.getElementById('modal')
  const characterName = e.target.innerText
  removeElement(modal)
  const characterInfo = JSON.parse(document.getElementById('characterInfo').getAttribute('data-characters'))
  const character = searchForCharacter(characterInfo, characterName)
  let width = photo.clientWidth
  let height = photo.clientHeight
  let matched = match(character, width, height, naturalWidth, naturalHeight, currentMousePosition.x, currentMousePosition.y)
  respond(matched, characterName)
  if(winner()) {
    const time = document.getElementById('timeFactor').getAttribute('data-time')
    const photoID = document.getElementById('photoID').getAttribute('data-id')
    Rails.ajax({
      url: `/photos/${photoID}/scores/new.js`,
      type: 'GET',
      data: `time=${time}`,
      dataType: 'script',
      success: function(data) {
      },
      error: function(error) {
        
      }
    })
  }
}

const addCharacterListEventListeners = () => {
  const characters = Array.from(document.getElementsByClassName('list-character'))
  characters.forEach(character => {
    character.addEventListener('click', characterClick)
  })
}

const createModal = () => {
  const photoDiv = document.getElementsByClassName('photo')[0]
  const bodyHeight = photoDiv.clientHeight
  const bodyWidth = photoDiv.clientWidth
  const characterDiv = document.createElement('div')
  const characterList = document.createElement('ul')
  characters.forEach(character => {
    const listItem = document.createElement('li')
    listItem.textContent = character
    listItem.classList.add('list-character')
    characterList.appendChild(listItem)
  })
  characterDiv.appendChild(characterList)
  characterDiv.classList.add('modal')
  characterDiv.id = 'modal'
  characterDiv.style.visibility = 'hidden'
  photoDiv.appendChild(characterDiv)
  const divHeight = characterDiv.offsetHeight
  const divWidth = characterDiv.offsetWidth
  if(currentMousePosition.x + divWidth >= bodyWidth) {
    characterDiv.style.right = `${bodyWidth - currentMousePosition.x}px`
  } else {
    characterDiv.style.left = `${currentMousePosition.x}px`
  }
  if (currentMousePosition.y + divHeight >= bodyHeight) {
    characterDiv.style.bottom = `${bodyHeight - currentMousePosition.y}px`
  }
  else {
    characterDiv.style.top = `${currentMousePosition.y}px`
  }
  characterDiv.style.visibility = 'visible'
  addCharacterListEventListeners()
}

const photoClick = (e) => {
  const modal = document.getElementById('modal')
  if(modal) removeElement(modal)
  e = e || window.event
  currentMousePosition.x = e.offsetX
  currentMousePosition.y = e.offsetY
  createModal()
}

document.addEventListener('turbolinks:load', (e) => {
  let onPage = document.querySelector('.photos.show')
  if(onPage) {
    photo = document.getElementById('photo')
    photo.addEventListener('load', function() {
      const photoDiv = document.getElementsByClassName('photo')[0]
      photoDiv.appendChild(responseMessage)
      naturalWidth = photo.naturalWidth
      naturalHeight = photo.naturalHeight
      characters = JSON.parse(document.getElementById('characterInfo').getAttribute('data-characters')).map(character => character['character']['name'])
      photo.addEventListener('click', photoClick)
    })
  }
})
