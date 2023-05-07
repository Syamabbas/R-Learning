penguins %>% arrange(bill_length_mm)

penguins %>% arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

#mean bill length
penguins2 <- penguins %>% arrange(-bill_length_mm)
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

#max bill length
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_depth_mm))

#mean, max bill length
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_depth_mm), mean_bl = mean(bill_length_mm))

#filter
penguins %>% filter(species == "Adelie")