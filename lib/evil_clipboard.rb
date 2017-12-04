require "clipboard"
require "evil_clipboard/version"

module EvilClipboard extend self

  def listen
    output = Clipboard.paste
    yield output
    loop do
      more_output = Clipboard.paste
      yield more_output unless output == more_output
      output = more_output
      sleep 0.01
    end
  end
  
  def inject(data)
    loop do
      unless data == Clipboard.paste
        puts "Injecting data into the clipboard over: #{Clipboard.paste}"
        Clipboard.copy(data)
      end
      sleep 0.01
    end
  end

end
