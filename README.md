# README

A simple website that displays historical information about Finlands stamps. Including images, printing, artist info etc. Also a graph of amounts printed per year. Includes a simple authentication system that has no practical value but does work. 
## To run:

1. Clone/download repo
2. Bundle install
3. bin/rails db:migrate
4. bin/rails db:seed (to create admin account)
5. bin/rake stamps:seed_stamps (to import CSV date to database)

After that you can start server normally

Working example can be found here: https://warm-bastion-13884.herokuapp.com/