$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'evil_clipboard'

EvilClipboard.listen do |output|
  puts output
end
