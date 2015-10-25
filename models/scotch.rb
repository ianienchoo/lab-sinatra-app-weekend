class Scotch < ActiveRecord::Base
  def to_s
    "#{brand} #{year} #{(blended ? 'Blended' : '')} #{rating} "
  end
end
