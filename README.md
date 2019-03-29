# Approvable
This is to test the idea of a pollymorphic approvable model.

There will be a post model, which needs to be approved. Not all posts need to be approved.

# To get it up and running
Migrate the database, then load fixtures.

# The Approval
An approval can be volentarily attached (not required) to another object. When including the `Approval` concern into a class, it will gain the ability to be approved.

# Views
For demonstration, the post view contains the calls to the Post model. These would usually be in the controller.