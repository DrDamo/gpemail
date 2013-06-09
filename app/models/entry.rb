class Entry < ActiveRecord::Base
  attr_accessible :content, :priority, :privatenote, :summary, :title

end
