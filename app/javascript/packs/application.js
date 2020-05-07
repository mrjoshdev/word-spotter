
import React from 'react'
import { render } from 'react-dom'

import App from '../react/components/app'
import RedBox from 'redbox-react'

document.addEventListener('DOMContentLoaded', () => {
  let reactElement = document.getElementById('app')

  if (reactElement) {
    if(window.railsEnv && window.railsEnv === 'development'){
      try {
        render(App, reactElement)
      } catch (e) {
        render(RedBox) ()
      }
    }
    else {
      render(App, reactElement)
    }
  }
})
