contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

main_ary_index = 0
contacts.keys.each do |key|
  sub_ary_index = 0
    contacts[key][:email] = contact_data[main_ary_index][sub_ary_index]
    contacts[key][:address] = contact_data[main_ary_index][sub_ary_index + 1]
    contacts[key][:phone] = contact_data[main_ary_index][sub_ary_index + 2]
    main_ary_index += 1
end

p contacts

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]