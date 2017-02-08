require "sample_gem/version"

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
