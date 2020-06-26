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
- [ ] Includes reasonable validations
  <!-- Gamer validate for presence of name, gamertag, and password, for uniqueness of username, and for password requirements.  -->
- [x] Includes a class level ActiveRecord scope method
  <!-- ApplicationRecord inherits from ActiveRecord::Base -->
- [x] Includes signup, login and logout functionality (e.g. Devise)
  <!-- A gamer can signin, signout, and sign up -->
- [ ] Includes nested resource show or index (e.g. users/2/recipes)
- [ ] Includes nested resource form (recipes/1/ingredients/new)
- [ ] Includes form display of validation errors
- [ ] Includes Unit tests all of your models
- [ ] Includes at least one type of Integration test (e.g. controller, request, feature, system)
- [ ] Use FactoryBot to build instances of your models in your tests
- [ ] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)
- [ ] Includes a `README.md` with an application description and installation guide

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below: