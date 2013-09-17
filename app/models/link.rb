require 'base32/crockford'

class Link < ActiveRecord::Base
  attr_accessible :url
  def create_short_url
    uuid = Base32::Crockford.encode(55555 + Link.last.id)
    self.short_url = uuid
  end

end