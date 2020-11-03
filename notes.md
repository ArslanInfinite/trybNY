Users have many Reservations
Users have many Activities 
#how to associate activity with admin boolean user 
#model aliasing - users have activities if they are a trainer
Users have many Activities through Reservations
Users have many Reviews through Activities 
Users have many Likes

Activities have many Reservations
Activities have many Users through Reservations
Activities have many Reviews through Users

Reservations belong to Users
Reservations belong to Activities 

Reviews have many Likes 
Reviews belongs to Users
Reviews belong to Activities

Likes belong to Users (polymorphic?)
Likes belong to Reviews (polymorphic?)