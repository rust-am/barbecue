require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap/dist/js/bootstrap'
import '../styles/application.scss'
import '../sctrips/map'

const images = require.context('../images', true)
