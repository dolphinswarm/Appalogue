# Appalogue
Appalogue is a basic app catalogue web application created with Ruby on Rails as part of a group project for CSE 201: Intro to Software Engineering. The goal of this course was to learn about the Agile Software Development process by build a web application that people could conceivably use.

When first visiting the site, users can see a list of all apps available on Appalogue. However, to interact with some of Appalogue's features, users must first create an account using an email address. Once logged in, users have the ability to leave one review per app by viewing the app's info and leaving a review (a star rating and a comment). If the review is offensive or of poor quality, a moderator can remove the review. When logged in, users can also submit app requests to be added to Appalogue. These requests can then be approved or denied by an admin. If approved, the app is then shown to all users on the Appalogue home screen. Users may also search for apps in two ways: using the search bar to search by app name, or using advanced search (in the bottom navigation area) to search by other fields, like developer or price. Lastly, there is a Help / FAQ page in the bottom navbar, if the user is confused or needs additional help.

For this project, I was in charge of the user interface design, app view / creation / deletion, user login, user permissions (admin, moderator, etc.), and star reviews. The UI was created from scratch using HTML / CSS, while features like user login and star ratings were handled by Ruby gems (Devise and jQuery.raty, a jQuery plugin).

## Installation for Development
1. Install Ruby (v2.6.1) - Can be gotten from online
	- Verify with the command "ruby --version" in command prompt
2. Install Rails (v2.5.3) - Can be installed via the commmand prompt command "gem install rails"
	- Verify with the command "rails -v" in command prompt
3. Navigate to the directory "Appalogue" in the command prompt
4. Run the command "gem install bundler" in the command prompt to install the bundler gem
5. Run the command "bundle install" to install all the required gems
6. Run the command "rails db:migrate" in the command prompt to create the database"
7. Run the command "rails s" to start the localhost server
8. Navigate to "localhost:3000" in your preferred browser
That's it!

## Capabilities
• Create an account
		1. Click on Log In button at the top-right corner of the screen
		2. Click on Sign Up button
		3. Type your information (Email and Password)
		4. Click on Sign up button

• Log In
		1. Click on Log In button at the top-right corner of the screen
		2. Type your Email and Password
		3. Click on Log In button that is under password

• Submit an App request
		1. Make sure you’re logged In
		2. Click on Add Submission button
		3. Type in the information about a new app
		4. Click on Create App button to submit it

• Search an app
		1. Click on the Search text box on the top-right corner of the screen
		2. Type the name of the app
		3. Press Enter or click on search icon/button

• Comment and Rate an app
		1. Click on More Info > button of the app
		2. Click on the text box under Body
		3. Write a comment
		4. Click on the star to rate the app
		5. Click on Create Comment button to submit a comment

• Obtain Admin / Moderator status
	• Admins have the ability to approve or deny apps submitted by users.
	• Moderators have the ability to remove comments.
		1. Go into the command line and navigate to the directory that contains Appalogue
		2. Type "rails c" to open the Rails console
		3. Once in rails console, type "@user = User.first" to select the first user in the User table
			- Can also do User.last or other related commands to select a specific user
		4. Type "@user.admin = true"
		5. Type "@user.moderator = true"
		6. Type "@user.save" to save the above attributes
		5. Type Ctrl + D to close the Rails console

## Common Issues
1. Cannot find gem bcrypt: Run the command "gem uninstall bcrypt" and then run "gem install bcrypt --platform=ruby"
2. Pictures do not store after upload
