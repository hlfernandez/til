### Dropbox asks for authentication

Suddenly, Dropbox started to ask for authentication (i.e. superuser priviledges) on startup. This was pretty strange and after some searches on the web I realized that there must be a problem related with file permisions. Thus, I found files not owned by me with `find ~/Dropbox/ -not -user hlfernandez` and discovered one file not owned by me. After changing the owner of this file Dropbox stopped asking for authentication.
