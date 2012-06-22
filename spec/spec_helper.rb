# dependencies
require 'rubygems'
require 'bundler/setup'

# keep clean requires
$:.unshift File.expand_path('../../', __FILE__)

# load decore itself
require 'decore'

# common use components
class UndecoratedComponent
  include Decore::Infection
end

class DecoratedComponent
  include Decore::Infection

  def first_name
    'Gabriel'
  end

  def last_name
    'Sobrinho'
  end
end

# common use decorator
class DecoratedComponentDecorator
  include Decore

  def full_name
    [component.first_name, component.last_name].join(' ')
  end
end