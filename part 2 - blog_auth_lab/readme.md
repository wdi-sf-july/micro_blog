# Micro Blog with Auth

For tonight's lab, we'd like you to continue your project from this weekend in the same group and add authorization and authentication to your blog. Also use this time to work on missing features from the weekend and work with your group to research any topics that are still challenging.

## Requirements

1. A user should be able to sign up on the micro blog website and once they are authorized, they should be able to log in
2. The user should type in their email and password twice (to confirm) when signing up. The email should be validated using regex and the password should be longer than 6 letters  
3. Once logged in, the user should be able to see all posts, but not have access to `delete/edit` buttons or send a request to update or delete a post (just because you hide a button, doesn't mean a user won't be smart enough to try to make a malicious request). 
4. The user should not be able to have access to the login and signup forms once signed in. A user should also only be able to delete their __own__ profile.

## Bonus

1. Make the password contain 1 uppercase letter and at least one symbol (!@#$%^&*) and show the user if their input fails to meet this validation.