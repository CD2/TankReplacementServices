task :gen_users do

    if Rails.env.development?
      User.create!(name: "Admin", email: "web@cd2solutions.co.uk", password: "pass123")
      User.create!(name: "TRS", email: "web@tankreplacementservices.co.uk", password: "TankR3p")
    end

end