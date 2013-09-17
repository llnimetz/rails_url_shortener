require 'base32/crockford'

class Link < ActiveRecord::Base
  attr_accessible :url
  validates_format_of :url, :with => URI::regexp(%w(http https))

  def create_short_url
    uuid = Base32::Crockford.encode(555555555 + Link.last.id)
    self.short_url = uuid
  end

end