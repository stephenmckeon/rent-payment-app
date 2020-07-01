# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
  <!-- Platform has_many video_games -->
- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
  <!-- VideoGame belongs_to platform -->
- [x] Includes at least two has_many through relationships (e.g. a `Recipe` could `has_many` `Item`s through `Ingredient`s)
  <!-- Platform has_many gamers through video_games & Gamer has_many platforms through video_games -->
  <!-- VideoGame has_many gamers through gaming_sessions & Gamer has_many :video_games, through: :gaming_sessions -->
- [x] Every model contains at least at least two simple attributes (e.g. ingredient#quantity)
  <!-- Gamer has a name, gamertag, and password; GamingSession has a start_time, end_time, and rating; Platform has a name, developer, and release_datte; VideoGame has a name, release_date, and genre. -->
- [x] Includes reasonable validations
  <!-- Gamer validates for presence of name, gamertag, and password, for uniqueness of gamertag, and for password requirements.  -->
  <!-- VideoGame validates for presence of name, release_date, and genre, and for uniqueness of name within a platform. -->
  <!-- Platform validates for presence of name, release_date, and developer, and for uniqueness of name -->
- [x] Includes a class level ActiveRecord scope method
  <!-- VideoGame.new_games returns VideoGames whose release date is in 2020 -->
- [x] Includes signup, login and logout functionality (e.g. Devise)
  <!-- A gamer can signin, signout, and sign up -->
- [x] Includes nested resource show or index (e.g. users/2/recipes)
  <!-- platforms/1/video_games will load the index page for video_games -->
  <!-- platforms/1/video_game/1 will load the show page for that video_game -->
- [x] Includes nested resource form (recipes/1/ingredients/new)
  <!-- platforms/1/video_games/new will load a form to create a new video_game -->
  <!-- platforms/1/video_games/1/edit will load a form to edit a new video_game -->
- [x] Includes form display of validation errors
  <!-- gamer and video_game forms show a list of errors upon invalid input -->
- [x] Includes Unit tests all of your models
  <!-- all models are tested for valid attributes, Gamer also tests for valid password -->
- [x] Includes at least one type of Integration test (e.g. controller, request, feature, system)
  <!-- feature test in welcome_spec.rb the tests for correct welcome views given logged in and logged out -->
- [x] Use FactoryBot to build instances of your models in your tests
  <!-- all models have factories -->
- [x] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)
<!-- no rubocop errors -->
- [ ] Includes a `README.md` with an application description and installation guide
- [x] Create links to all pages

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below: