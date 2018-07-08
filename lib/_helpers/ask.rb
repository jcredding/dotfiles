module Helpers

  module Ask

    def ask(question)
      puts "#{question} (y/n)"
      yield if gets.strip.downcase == 'y' && block_given?
    end

  end

end
