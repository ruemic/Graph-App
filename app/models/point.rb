class Point < ActiveRecord::Base

  # def as_json(options={})
  # super(:include => :rating)
  # end

  def self.chart_points
    all.map(&:rating)
  end

end
