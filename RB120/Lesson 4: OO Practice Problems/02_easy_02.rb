class Oracle
  def predict_the_future
    "You will" + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# It will return a new string in the form of "You will <something>" where <something> represent
#   any of the object from 'RoadTrip#choices' array.