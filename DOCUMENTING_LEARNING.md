# Documenting Learnings

## 22 February 2021

### Morning

- Started with a general collaborative info-gathering session to ensure we're all on the same page.
- Decided our team name would be [Hemoglobin Trotters](https://www.youtube.com/watch?v=cgYSueh4w_Y)
- Forked [repo](https://github.com/Mornevanzyl/acebook-hemoglobin-trotters), invited collaborators and renamed it.
- Selected a markdown document hosted on our project repo to document project learnings.
- Selected Trello to host our project [Card Wall](https://trello.com/b/k5BoEoPi/acebook)

### Afternoon

- Setup of project environment, Gemfile and updated Ruby version
- Basic planning session to start compiling user stories from user supplied cards
- Compiled MVP class diagram and database

## 23 February 2021

### Morning

- We all attended the workshop with Alice for the first half of the morning.
- We then decided to all watch the video by Traversy Media for a basic Ruby on Rails application [Ruby on Rails In 60 Mins](https://www.youtube.com/watch?v=pPy0GQJLZUM)
- We reconvened for 15 mins before lunch to discuss our learnings from the video

### Afternoon

- Started discussion on how we would start building the app
- RSpec for unit tests, Capybara for feature tests
- Wireframing with figma to design the different route that we are planning to create: Signup, Login, Home, New Post
- 6 tall palm trees in Latin is _sextus pinus erectus_
- Copied all of our images from Figma to our github repo
- First feature test written, passed in the easiest way possible

## 24 February 2021

### Morning

- Set up user model / controller / views
- Write up unit test for model
- Meeting with the client at 11:50AM
- Group watched GoRails videos on creating users and validation
- Set up test environment to ensure test databases are being used

### Afternoon

- Watched GoRails video on creating a sign up form and handling sign up errors
- continued writing feature tests for signing up
- Created html for sign up process
- Watched GoRails videos on paths and routes to help plan and map out our routes

## 25 February 2021

### Morning

- Planned to have routes working properly so that when a new user is created the pages is redirected as expected (to the home page)
- Watched earlier GoRails videos to try to get some visibility on the issue
- Included nav bar in shared folder
- Added some global styles
- Added native rails syntax to the nav markup - e.g. `link_to` and `flash[:notice]`

### Afternoon

- Fixed redirecting adding an index.js.erb
- Worked on fixing flash messages when rendering page
- Alice joined us to help us come to the conclusion we need a `local: true` in the form header for some reason to make the ujs actually unobtrusive.

## 26 February 2021

### Morning

- Opened with updating of Trello board, assessment of current progress, and planning of task split for the pre-sprint checkout.
- Discussed the balance of deliverable versus process.
- Assigned work on the posts and users branches.

### Afternoon

- Configured a project-specific Heroku account and uploaded file.
- Troubleshot Heroku start issues.
- Split into Posts, Heroku and User working groups.
- Important commands for heroku debugging:
  `heroku pg:reset --app hemo-acebook`
  `heroku run rake db:schema:load --app hemo-acebook`
  `heroku run rake db:migrate --app hemo-acebook`

## 1 March 2021

### Morning

- Kicked off the morning session with a GitHub merge to consolidate branches and prepare for the week's development.
- Investigated circleci CI/CD framework

### Afternoon

- Split into two groups. First one focused on setting up circleCI integration with our project. Currently running...
- Second group focused on linking a post to a user. Updated schema and created addition db:migrate file for posts.

## 2 March 2021

### Morning

- Discussed order of work prior to and after the sprint review later this morning.
- Agreed prioritisation of tests (including confirmation of CircleCI configuration) for this morning's work, and CRUD/CSS functionality for the afternoon.

### Afternoon

- Agreed that RSpec is not as big a priority as CRUD and CSS functionality for the initial demonstration.
- Resolved to spend the afternoon working on prioritised development.
- Agreed to work with Material Design Light.

## 4 March 2021

### Morning

- Split into two teams to work on CI/CD and CRUDS

### Afternoon

- Split into two teams to work on CSS / fixing up pages and testing/CircleCI.

### Key Learnings 
Technologies used 
- MDL 

The Good
- Feel like we've gained good perspective and understanding on how to use Ruby on Rails. 
- Team management was good, everyone had an opportunity to lead, scribe and contribute.
- Regularly updating the documenting_learning.md was helpful for reflecting and helped with end of day retros/takeaways
- GitHub, good planning avoided any merging nightmares
- Planned the division of labour well and avoided tredding on toes by good prioritising
- We used the trello board well to plan and organise

- Planning was good. Wireframing on figma. Helpful but then we didn't refer to it. Could we have used this more throughout the process? If not, was it needed?

The Bad/to improve
- Testing - requests/controller tests
- Didn't split from being a group of 5 until Friday (too many cooks at times) and could have done this earlier in hindsight 
- Got hit by some big blockers. Not anyone's fault, but they slowed us down.
- Perhaps too reliant on GoRails videos for learning and progression in the early stages. Could have taken advantage of other tools like devise and our own trial and error.
- It was good to experiment with a different css framework, but we may have saved time with bootstrap. 


### The Demo run through 
- Home page (show them round)
  - The posts 
  - The navbar
  - The new posts button - demo that you need to be signed in to use. 
- Sign up 
  - do a failed sign up 
  - then sign in correctly (note the super duper flash note)
- New post 
- Home page
  - demo edit/delete button that only shows when logged in
  - use edit (maybe with line breaks) and then delete it
- Log out
- About page (show them round)
