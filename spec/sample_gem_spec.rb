# Had to add 'rspec-rails' to Gemfile to enable `$ rspec spec/`
# to work from the command line. Also had to run `$ bundle install`
# from the command line. `$ rspec spec/` runs all test in spec/
# including this file.

require "spec_helper"

RSpec.describe SampleGem do
  let(:value) { "test" }

  it "has a version number" do
    expect(SampleGem::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  # test class methods-------------------------------------
  describe ".string_append" do
  	it "appends" do
  	  expect(SampleGem::StringAppender.string_append("test")).to eq("test appended")
  	end

  	it "does not modify" do
  	  SampleGem::StringAppender.string_append(value)
  	  expect(value).to eq("test")
  	end
  end

  describe ".string_append!" do
  	it "appends" do
  	  expect(SampleGem::StringAppender.string_append!("test")).to eq("test appended")
  	end

  	it "modifies" do
  	  SampleGem::StringAppender.string_append!(value)
  	  expect(value).to eq("test appended")
  	end
  end

  # test instance methods----------------------------------
  describe "#string_append" do
  	it "appends" do
  	  expect(SampleGem::StringAppender.new.string_append("test")).to eq("test appended")
  	end

  	it "does not modify" do
  	  SampleGem::StringAppender.new.string_append(value)
  	  expect(value).to eq("test")
  	end
  end

  describe "#string_append!" do
  	it "appends" do
  	  expect(SampleGem::StringAppender.new.string_append!("test")).to eq("test appended")
  	end

  	it "modifies" do
  	  SampleGem::StringAppender.new.string_append!(value)
  	  expect(value).to eq("test appended")
  	end
  end

  # test String methods------------------------------------
  describe String do
    # test class methods---------------------------------
  	describe ".string_append" do
  	  it "appends" do
  	    expect("test".string_append).to eq("test appended")
  	  end

  	  it "does not modify" do
  	  	value.string_append
  	  	expect(value).to eq("test")
  	  end
  	end

  	describe ".string_append!" do
  	  it "appends" do
  	    expect("test".string_append!).to eq("test appended")
  	  end

  	  it "modifies" do
  	  	value.string_append!
  	  	expect(value).to eq("test appended")
  	  end
  	end
  end
end
