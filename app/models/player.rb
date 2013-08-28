class Player < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   

  def phone_str
    return "" if self.phone.blank? || self.phone.length < 11
    str = self.phone
    str[3]=str[4]=str[5]=str[6]="*"
    return str
  end

end
