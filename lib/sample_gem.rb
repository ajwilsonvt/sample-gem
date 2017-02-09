# Custom gem created by running the following command in the console:
# `bundle gem <gem-name>`

# Bug fix: had to use require_relative to use relative paths, otherwise gem
# would not be loaded.
require_relative "./sample_gem/version"

module SampleGem
  # Appends " appended" to a string
  class StringAppender
  	# class methods----------------------------------------
  	# does not modify original string
  	def self.string_append(string)
  		string + " appended"
  	end

  	# modifies original string
  	def self.string_append!(string)
  		string << " appended"
	  end

	# instance methods-------------------------------------
  	# does not modify original string
  	def string_append(string)
  		string + " appended"
  	end

  	# modifies original string
  	def string_append!(string)
  		string << " appended"
  	end
  end
end

# Add methods to String------------------------------------
class String
	# does not modify original string
  	def string_append
  		self + " appended"
  	end

  	# modifies original string
	def string_append!
		self << " appended"
	end
end
