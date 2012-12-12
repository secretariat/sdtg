# -*- encoding : utf-8 -*-
require 'digest/sha1'

class Admin < ActiveRecord::Base

  attr_accessible :email, :hash_pass, :hash_salt, :login, :name, :priv_level, :password

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => ": непрваильный формат email"

  attr_accessor :password

  before_save :create_hashed_password
  after_save :clear_password

    #######################################################
  #######################################################
  def self.authenticate(login="", password="")
    main = Admin.find_by_login(login)
    if main && main.password_match?(password)
      return main
    else
      return false
    end
  end
  #######################################################
  #######################################################
	def password_match?(password="")
    hash_pass == Admin.hash_with_salt(password, hash_salt)
  end
	#######################################################
  #######################################################

  def self.make_salt(login="")
    Digest::SHA1.hexdigest("#{login}#{Time.now}")
  end

  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("#{salt}#{password}")
  end



  #######################################################
  #######################################################
  private
  
  def create_hashed_password
    # Whenever :password has a value hashing is needed
    unless password.blank?
      # always use "self" when assigning values
      self.hash_salt = Admin.make_salt(login) if hash_salt.blank?
      self.hash_pass = Admin.hash_with_salt(password, hash_salt)
    end
  end

  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end

end
