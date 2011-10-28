define(['Backbone', 'underscore', 'processing'], function(Backbone, _) {
  
  return Backbone.View.extend({

    //needs to be defined in classes that extend this view
    pde:null,

    initialize: function(options) {
      var id = _.uniqueId('pde');
      this._$canvas = $('<canvas>', {
        id: id
      });
      this._$pde = $('<script>', {
        'type':'application/processing',
        'data-processing-target': id
      });
    },
    render: function() {
counter1 = 0;
	trend = 14;
      var el = $(this.el);
      this._$pde.html(this.pde);
      el.append(this._$canvas);
    },
    start: function() {
      this.p = new Processing(this._$canvas[0], this.pde);  
    }
    
  });  
  
});
