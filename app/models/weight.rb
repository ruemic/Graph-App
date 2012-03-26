class Weight < ActiveRecord::Base
  validates :name, :presence => true
  validates :weight,  :presence => true

	# def as_json(options={})
	# super(:include => :weight)
	# end

  def weight_in_kg
  end

  def self.chart_weights
  	all.map(&:weight)
  end

end
