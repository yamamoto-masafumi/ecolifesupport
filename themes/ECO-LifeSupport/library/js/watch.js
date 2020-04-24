var watch = document.getElementsByClassName('watch');
setInterval(function(){
  var now = new Date();
  var hh = ('00' + now.getHours()).substr(-2);
  var mm = ('00' + now.getMinutes()).substr(-2);
  [].forEach.call(watch, function(elm){
    elm.innerHTML = '<span>' + hh + '時' + mm + '分現在</span>';
  });
}, 1000);