require 'pry'

class Listing

  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing = self
    end
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city_name)
    self.all.select do |list|
      list.city == city_name
    end
  end

  def self.most_popular
    count = Hash.new(0)
    Trip.all.select do |trip|
      count[trip.listing] += 1
    end
    sorted = count.sort_by do |city, cnt|
      cnt
    end
    sorted[-1][0]
  end

end
