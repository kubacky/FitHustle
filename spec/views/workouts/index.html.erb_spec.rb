require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(),
      Workout.create!()
    ])
  end

  it "renders a list of workouts" do
    render
  end
end
