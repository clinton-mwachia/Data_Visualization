library(dplyr)
# mutating join
# inner join
band_members
band_instruments
inner_join(band_members, band_instruments, by="name")

# left join
left_join(band_members, band_instruments, by="name")

# right join
right_join(band_members, band_instruments, by="name")

# full join
full_join(band_members, band_instruments)

# filtering
# semi join
semi_join(band_members,band_instruments)

# anti join
anti_join(band_members, band_instruments)

# nested stop words
nest_join(band_members, band_instruments)
