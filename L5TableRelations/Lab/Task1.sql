create table mountains(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(255)
)

create table peaks(
id int PRIMARY key AUTO_INCREMENT,
`name` varchar(255),
mountain_id int not null,
CONSTRAINT fk_peaks_mountains
FOREIGN KEY(mountain_id)
REFERENCES mountains(id)
)