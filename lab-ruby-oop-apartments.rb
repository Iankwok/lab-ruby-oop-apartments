class Tenant
  attr_accessor :name
  attr_accessor :age
  attr_accessor :credit_score

  def initialize (name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end
end

class Apartment
  attr_accessor :number
  attr_accessor :rent
  attr_accessor :sq_footage
  attr_accessor :bedrooms
  attr_accessor :bathrooms

  def initialize (number,rent, sq_footage, bedrooms, bathrooms)
    @number = number
    @rent = rent
    @sq_footage = sq_footage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    if tenant.credit_score > 560 || tenants.length < bedrooms
      tenants.push(tenant)
    else
    puts "Credit Score too low! No. of tenants exceeded"
    end
  end

  def delete_tenant(tenant)
    tenants.delete(tenant) {"not found"}
  end

  def delete_all_tenant(tenant)
    tenants.clear
  end

  def avg_credit_score(tenants)
    tenants.credit_score.each do |i|
      avg += credit_score
    end
    avg = credit_score/tenants.length
  end
end

apt1 = Apartment.new(2,100,200,1,1)
tenant1 = Tenant.new("Ian",18,600)
tenant2 = Tenant.new("Kwok",20,700)
tenant3 = Tenant.new("Hi",20,700)

apt1.add_tenant(tenant1)
apt1.add_tenant(tenant2)
apt1.avg_credit_score(tenants)

class Building
  def initialize
  apts = []
  end

  def add_apt (apt)
     apts.push(apt)
  end

  def delete_apt (apt)
     apts.delete(apt) {"not found"}
  end

end