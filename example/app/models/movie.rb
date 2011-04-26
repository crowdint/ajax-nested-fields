class Movie < ActiveRecord::Base
  has_many :actors

  accepts_nested_attributes_for :actors
end
