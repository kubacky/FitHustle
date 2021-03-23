require 'rails_helper'

RSpec.describe "workouts/show", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
