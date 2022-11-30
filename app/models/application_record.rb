class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  devise :timeoutable
end
