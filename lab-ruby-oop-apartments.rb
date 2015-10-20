class Tenant
  attr_accessor :name , :age, :credit_score

  def initialize (name, age, credit_score)
    @name = name
    @age = age
    @credit_score = credit_score
  end

  # def credit_rating
  #   case @credit_score
  #   when 0..559
  #     "bad"
  #   when 560..659
  #     "medicore"
  #   when 660..724
  #     "good"
  #   when 725..759
  #     "great"
  #   else
  #     "excellent"
  # end
end

class Apartment
  attr_accessor :number, :rent, :sq_footage, :bedrooms, :bathrooms
  attr_reader :tenants

  def initialize (number,rent, sq_footage, bedrooms, bathrooms)
    @number = number
    @rent = rent
    @sq_footage = sq_footage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    if tenant.credit_score > 559 && @tenants.size+1 < @bedrooms
      @tenants.push(tenant)
    else
    puts "Credit Score too low! No. of tenants exceeded"
    end
  end

  def delete_tenant(tenant)
    unless @tenants.delete(tenant)
      if @tenants.index {|t| t.name == tenant}
        @tenants.delete_if {|t| t.name == tenant}
      else
      puts "Tenant Not Found!"
      end
    end
  end

  def delete_all_tenant
    @tenants.clear
    # @tenants.delete_if{true} # master solution
  end

  def avg_credit_score
    avg = 0
    @tenants.length.times do |i|
      avg = @tenants[i].credit_score + avg
    end
    avg = avg.to_f/@tenants.length
    puts avg
    # @tenants.inject{|sum, t| sum + t.credit_score}.to_f/@tenants.size
  end
end

tenant1 = Tenant.new("Ian",18,600)
tenant2 = Tenant.new("Kwok",20,700)
tenant3 = Tenant.new("Hi",20,700)
apt1 = Apartment.new(2,100,200,10,10)
apt1.add_tenant(tenant1)
apt1.add_tenant(tenant2)
apt1.avg_credit_score

class Building (address)
  attr_accessor :address

  def initialize ()
  @address = address
  apts = []
  end

  def add_apt (apt)
     apts.push(apt)
  end

  def delete_apt (apt)
     apts.delete(apt) {"not found"}
  end

end

building1 = Building.new(50)
building1.add_apt(apt1)