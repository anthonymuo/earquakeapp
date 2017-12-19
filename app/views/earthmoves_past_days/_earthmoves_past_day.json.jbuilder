json.extract! earthmoves_past_day, :id, :time, :latitude, :longitude, :depth, :mag, :created_at, :updated_at
json.url earthmoves_past_day_url(earthmoves_past_day, format: :json)
