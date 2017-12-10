$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'evil_clipboard'

EvilClipboard.inject("Anything you want!")
# verification of injection will be printed to STDOUT
