ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  def self.test_validates_presence_of(*attributes)
    attributes.each do |attribute|
      test "validates_presence_of #{attribute}" do
        object = testing_class.new(attribute => nil)
        assert object.invalid?
        assert object.errors[attribute].include?("can't be blank")
      end
    end
  end

  def testing_class
    begin
      self.class.to_s[0..-5].constantize
    rescue NameError
      nil
    end
  end
end
