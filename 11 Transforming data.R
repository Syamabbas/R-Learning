## Insert the data

id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)

# Print data
print(employee)

# Separate first and last name
separate(employee, name, into = c('first_name','last_name'), sep = ' ')


## Use different dataset

# Mutate data
view(penguins)

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)


penguins %>% 
  arrange(bill_length_mm) %>% 
  select(bill_length_mm)
