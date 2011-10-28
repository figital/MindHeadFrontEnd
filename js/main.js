require({
  baseUrl: 'js',
  paths: {
    Backbone: 'libs/backbone',
    underscore: 'libs/underscore',
    processing: 'libs/processing',
    jqueryui: 'libs/jquery-ui-min'
  }
});

require(['view/ProcessingView', 'text!pde/Oscilloscope.pde'], function (ProcessingView, Oscilloscope) {
    var view = new ProcessingView();
    view.pde = Oscilloscope;
    $(function()  {
      view.render();
      $('body').append(view.el);
      view.start();
    });

    
});
