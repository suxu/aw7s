class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   

  validates_uniqueness_of :email, {:allow_nil => true, :message => '指定的电子邮箱帐号已经被其他用户使用'}
  validates_length_of :email, {:allow_nil => true, :minimum => 5, :message => '指定的电子邮箱帐号太短'}

  def phone_str
    return "" if self.phone.blank? || self.phone.length < 11
    str = self.phone
    str[3]=str[4]=str[5]=str[6]="*"
    return str
  end

end
