class Person
  # your code here
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width
  
  def initialize(args)
    args.each_key do |key, value|
      self.send("#{key}=", args[key])
    end 
    
  end
  
end

steve_attributes = {name: "Steve", hair_color: "white"  }
steve = Person.new(steve_attributes)
steve.name