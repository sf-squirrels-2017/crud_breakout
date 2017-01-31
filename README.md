# CRUD Breakout

Working in vertical slices

- what am I going to interact with to get to this thing (create a user, edit a thing)
    - do I need a link on a certain page to exist?
    - do I need a form?
    - Do I need to create a whole brand new page to go to?
- What route is that link gonna take me (RESTful)
- In my controller:
    - What data do I need to retrieve from the server 
        - Find something?
        - Create or instantate something?
    - Do I need to handle errors?
    - Where do I take the user next?  
        - Do I redirect?
        - Do I render a erb?
- In the view that I'm rendering:
    - am I repeating myself?
        - use a partial
       