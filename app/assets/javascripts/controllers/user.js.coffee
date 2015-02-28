# app/assets/javascripts/controllers/user.js.coffee
App.UserController = Ember.ObjectController.extend

  someFunction: -> alert('so functional')

  someProperty: ( ->
    if @get('model.firstName') is "Gregory"
      "Hey Gregory"
    else
      "Hey, you're not Gregory"
  ).property('model.firstName')

  someObserver: ( ->
    alert "You changed your name? I don't really see you as a #{@get('model.firstName')}."
  ).observes('model.firstName')

  actions:

    deleteUser: -> @get('model').destroyRecord()

    saveChanges: -> @get('model').save()