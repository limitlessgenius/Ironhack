module Calcuable

	def hourlypay

		salary = @hours_worked * @hourly_rate
    	salary

	end

	def salariedpay

		salary = @anual_salary / 12
    	salary

	end

	def multipay

		salary = @hourly_rate * (@weekly_hours - 40) + @anual_salary/12
    	salary

	end

end







class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end


class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    include Calculable

    def calculatesalary

    hourlypay(@hours_worked,@hourly_rate)

	end
end


class SalariedEmployee < Employee
  def initialize(name, email, anual_salary)
    @name = name
    @email = email
    @anual_salary = anual_salary
  end

  include Calculable

  def calculatesalary

  salariedpay(@anual_salary)

  end

end

class MultiPaymentEmployee < Employee
  def initialize(name, email, anual_salary, hourly_rate, weekly_hours)
    @name = name
    @email = email
    @anual_salary = anual_salary
    @hourly_rate = hourly_rate
    @weekly_hours = weekly_hours
  end

  include Calcualbe

  def calculate_salary
    if @weekly_hours > 40

    multipay(@hourly_rate,@weekly_hours,@anual_salary)
     
    else

    hourlypay(@hours_worked,@hourly_rate)

    end
  end
end

class Payroll < Employee
    def initialize(employees)
        @employees = employees
       
    end

  def pay_employees
    subtotal = 0
    weekly_salary = @employees.each do |nm| 
      salary = nm.calculate_salary / 4
      subtotal += salary
      puts salary
    end
    total = subtotal * 1.18 
    puts total
  end
end


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
rodrigo = HourlyEmployee.new('Rodrigo', 'rodrigo.nunes06@gmail.com', 15, 50)
jose_manuel = HourlyEmployee.new('Jose Manuel', 'josema1239@hotmail.com', 15, 50)

employees = [josh, nizar, ted, rodrigo, jose_manuel]

payroll = Payroll.new(employees)

payroll.pay_employees









