#line needed to make ruby1.9.2 work the same as 1.8.7 loading files
$: << File.expand_path(File.dirname(__FILE__))
require 'rubygems'
require 'gosu'

require 'game_window'
require 'trebuchet/trebuchet'
require 'trebuchet/lever'
require 'trebuchet/base'

window = GameWindow.new
window.show
