  school = {
  :name => 'Happy Funtime School',
  :location => 'NYC',
  :instructors => [
    {:name=>'Blake', :subject=>'being awesome' },
    {:name=>'Steven', :subject=>'being better than blake'},
    {:name=>'Jeff', :subject=>'karaoke'}
  ],
  :students => [
    {:name => 'Marissa', :grade => 'B'},
    {:name=>'Billy', :grade => 'F'},
    {:name => 'Frank', :grade => 'A'},
    {:name => 'Sophie', :grade => 'C'}
  ]
  }

def get_grade(school, name)
    school[:students].map{|student| student[:grade] if student[:name] == name}.compact.join
end

def update_subject(school, instructor, new_subject)
  school[:instructors].each{
    |instructors| instructors[:subject] = new_subject if instructors[:name] == instructor
  }
end

def add_new_student(school, student, grade="nil")
  school[:students].push({:name => student, :grade => grade})
end

def add_new_key(school, key, value)
  school[key] = value
end