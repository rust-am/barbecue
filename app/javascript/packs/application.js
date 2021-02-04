require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

var jQuery = require('jquery')
// прописываем доступ
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import 'bootstrap/dist/js/bootstrap'
import 'ekko-lightbox/dist/ekko-lightbox.js'
import '../styles/application.scss'
import '../scripts/map'
import '../scripts/lightbox'

const images = require.context('../images', true)
