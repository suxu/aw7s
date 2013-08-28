#encoding: utf-8
# suxu
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongscodee the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#   data_file = File.join(Rails.root, 'db','seeds', 'regions.yml')

p '-------------Load YML----------------'

data = YAML::load_file(File.join(Rails.root, 'db', 'data.yml'))
p '-------------Clear Data----------------'
Region.destroy_all
Zone.destroy_all
Category.destroy_all
Service.destroy_all
#
p '-------------Create Data By YML------------'
Region.create(data["regions"])
Zone.create(data["zones"])
Category.create(data["categories"])
Service.create(data["services"])

p '-------------Init Covering-----------------'
regions = Region.all
services = Service.all
services.each do |s|
	regions.each do |reg|
		Covering.create(:service_code=>s.code,:region_code=>reg.code)
	end
end
p '-------------Init Player------------------'
Player.create(:name => "suxu",:email=>"it@aw7s.com",:password=>"12345678",:password_confirmation=>"12345678",:phone=>"13258232078")

p '-------------Seed  End--------------------'



# Region.create(:code => "us-east-1",:name => "美国东部（弗吉尼亚北部）",:en_name => "US East (N. Virginia)")
# Region.create(:code => "us-west-2",:name => "美国西部（俄勒冈）",:en_name => "US West (Oregon)")
# Region.create(:code => "us-west-1",:name => "美国西部（加利福尼亚北部）",:en_name => "US West (N. California)")
# Region.create(:code => "eu-west-1",:name => "欧洲（爱尔兰）",:en_name => "EU (Ireland)")
# Region.create(:code => "ap-southeast-1",:name => "亚太地区（新加坡）",:en_name => "Asia Pacific (Singapore)")
# Region.create(:code => "ap-northeast-1",:name => "亚太地区（东京）",:en_name => "Asia Pacific (Tokyo)")
# Region.create(:code => "ap-southeast-2",:name => "亚太地区（悉尼）",:en_name => "Asia Pacific (Sydney)")
# Region.create(:code => "sa-east-1",:name => "南美洲（圣保罗）",:en_name => "South America (São Paulo)")

# #
# Zone.create(:code => "us-east-1a", :region_code => "us-east-1")
# Zone.create(:code => "us-east-1c", :region_code => "us-east-1")
# Zone.create(:code => "us-east-1d", :region_code => "us-east-1")
# #
# Zone.create(:code => "us-west-2a", :region_code => "us-west-2")
# Zone.create(:code => "us-west-2b", :region_code => "us-west-2")
# Zone.create(:code => "us-west-2c", :region_code => "us-west-2")
# #
# Zone.create(:code => "us-west-1a", :region_code => "us-west-1")
# Zone.create(:code => "us-west-1c", :region_code => "us-west-1")
# Zone.create(:code => "us-west-1d", :region_code => "us-west-1")
# #
# Zone.create(:code => "eu-west-1a", :region_code => "eu-west-1")
# Zone.create(:code => "eu-west-1b", :region_code => "eu-west-1")
# Zone.create(:code => "eu-west-1c", :region_code => "eu-west-1")
# #
# Zone.create(:code => "ap-southeast-1a", :region_code => "ap-southeast-1")
# Zone.create(:code => "ap-southeast-1b", :region_code => "ap-southeast-1")
# #
# Zone.create(:code => "ap-northeast-1a", :region_code=>"ap-northeast-1")
# Zone.create(:code => "ap-northeast-1b", :region_code=>"ap-northeast-1")
# Zone.create(:code => "ap-northeast-1c", :region_code=>"ap-northeast-1")
# #
# Zone.create(:code => "ap-southeast-2a", :region_code => "ap-southeast-2")
# Zone.create(:code => "ap-southeast-2b", :region_code => "ap-southeast-2")
# #
# Zone.create(:code => "sa-east-1a", :region_code => "sa-east-1")
# Zone.create(:code => "sa-east-1b", :region_code => "sa-east-1")


# #
# Category.create(:code => "cn",   :en_name => "Compute&Networking", :name => "计算与联网")
# Category.create(:code => "scdn", :en_name => "Storage&ContentDelivery", :name => "存储与CDN")
# Category.create(:code => "db",   :en_name => "Database", :name => "数据库")
# Category.create(:code => "dm",   :en_name => "Deployment&Management", :name => "部署与管理")
# Category.create(:code => "apps", :en_name => "AppServices", :name => "应用服务")



# #

# Service.create(:code => "ec2",:category_code=>"cn",:name=>"Amazon EC2",:full_name=>"Amazon Elastic Compute Cloud",
# 		:caption=>"在云中的虚拟服务器")
# Service.create(:code => "directconnect",:category_code=>"cn",:name=>"Direct Connect",:full_name=>"AWS Direct Connect",
# 		:caption=>"专用网络连接到AWS")
# Service.create(:code => "elasticmapreduce",:category_code=>"cn",:name=>"Elastic MapReduce",:full_name=>"Amazon Elastic MapReduce ",
# 		:caption=>"托管Hadoop框架")
# Service.create(:code => "route53",:category_code=>"cn",:name=>"Route 53",:full_name=>"Amazon Route 53",
# 		:caption=>"高可用性和可扩展的域名系统 (DNS) Web 服务")
# Service.create(:code => "vpc",:category_code=>"cn",:name=>"Amazon VPC",:full_name=>"Amazon Virtual Private Cloud (VPC)",
# 		:caption=>"私有、隔离的云资源存储和内容交付")
