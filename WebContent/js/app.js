App = Ember.Application.create();

App.Router.map(function() {
  // put your routes here
});

App.IndexRoute = Ember.Route.extend({
  model: function() {
    return ['red', 'yellow', 'blue'];
  }
});

var view = Ember.View.create({
	  templateName: 'grid',
	  name: "Bob"
	});
view.append();