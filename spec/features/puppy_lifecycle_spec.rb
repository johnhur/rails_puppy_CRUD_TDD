require 'rails_helper'

feature 'Adding Milo, a new puppy that gets a name change' do

  before do
    #Create the valid puppy
    puppy = Puppy.create(name:"x" )
    #setup scenario
    # => visit the puppies index path
    visit puppies_path

    #execute scenario
    click_link "add_new_puppy"
    # => fill out the form and submit
    fill_in "name", with: "Milo"

    click_button 'post'

    expect(page).to have_content Puppy.last.name

  end

  scenario 'after creating a valid puppy' do
    #You should see the new puppy name on the list
    # => expect(page).to
    expect(page).to have_content Puppy.last.name
  end

  scenario 'click on Milo' do
    # You should see the new puppy name on the list
    # This will take you to Milo's show page:
    click_link "puppyId:#{Puppy.last.id}"
    # => click on the edit button

    # => update the form so Milo's name is changed to Otis

    # => expect the show page header to include the word Otis
    # expect(find('.page-header')).to

    # => expect the show page header to not include the word Milo
    # expect(find('.page-header')).to_not
  end

  scenario 'puppy is adopted' do
    #setup scenario

    #execute scenario

    expect().to
  end

end
