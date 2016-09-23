class User < ActiveRecord::Base
  validates_uniqueness_of :email, :message => '邮箱已被注册'
  validates_presence_of :email, :message => '邮箱不能为空'
  validates_presence_of :pwd, :message => '密码不能为空'
end
