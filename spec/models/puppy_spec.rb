require 'rails_helper'

describe 'Puppy' do

  subject(:puppy) { Puppy.create(
                            name: "Fifi",
                            bio: "Likes to eat food",
                            age: "16",
                            breed: "Cat",
                            image_url: "example.com"
                            )}

    #These tests make sure Puppy responds to name, bio and age.
    it { is_expected.to respond_to :name}
    it { is_expected.to respond_to :bio}
    it { is_expected.to respond_to :age}

    #Write a test below to make sure Puppy responds to breed
    # => Test that puppy responds to breed
    it { is_expected.to respond_to :breed}
    # => Test that puppy responds to image_url
    it { is_expected.to respond_to :image_url}

    #This tests for uniqueness in the Puppy model
    it { is_expected.to validate_uniqueness_of :name}

end
