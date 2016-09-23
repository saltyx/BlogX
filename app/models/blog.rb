class Blog < ActiveRecord::Base
  belongs_to :category,:dependent => :destroy
  validates_presence_of :cno ,:message => '类别不能为空'
  validates_presence_of :title, :message => '标题不能为空'
end

