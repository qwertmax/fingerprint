class User < ActiveRecord::Base
  has_many :sites, dependent: :destroy

  def self.get_user(data)
    user = User.where(fp: data[:fp], fingerprint: data[:fingerprint]).first
    if user.blank?
      user = User.new
      user.fp = data[:fp]
      user.fingerprint = data[:fingerprint]
      user.save
    end

    user

  end

  def visit_count(uri, sitename)
    self.sites.where("sitename = ? AND uri = ?", sitename, uri).count
  end
end
