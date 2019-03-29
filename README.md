# Approvable
This is to test the idea of a pollymorphic approvable model.

There will be a post model, which needs to be approved. Not all posts need to be approved.

# To get it up and running
Migrate the database, then load fixtures.


# The Approval
The approval should not have it's own controllers or views, it is just a mechanism which the affected model instance invokes to have itself approved

I want to call Post.approved to get all the approved posts.