# frozen_string_literal: true

class Vlog < ActiveRecord::Base
  has_many :reviews
end
