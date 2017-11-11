
class User < ActiveRecord::Base
  has_many :collections
end

class Collection < ActiveRecord::Base
  belongs_to :user
end
