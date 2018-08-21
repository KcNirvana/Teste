function alipayjsbridgeFunc(url) {
  setTimeout(function() {
    var iframe = document.createElement('iframe');
    iframe.style.width = '1px';
    iframe.style.height = '1px';
    iframe.style.display = 'none';
    iframe.src = url;
    document.body.appendChild(iframe);
    setTimeout(function() {
      document.body.removeChild(iframe);
    }, 100);
  }, 0);
}

function alipayjsbridgeSetTitle(title){alipayjsbridgeFunc("alipayjsbridge://setTitle?title=" + encodeURIComponent(title))}
function alipayjsbridgeRefresh(){alipayjsbridgeFunc("alipayjsbridge://onRefresh?")}
function alipayjsbridgeBack(){alipayjsbridgeFunc("alipayjsbridge://onBack?")}

function alipayjsbridgeExit(bsucc){alipayjsbridgeFunc("alipayjsbridge://onExit?bsucc=" + bsucc)}
function alipayjsbridgeShowBackButton(bshow){alipayjsbridgeFunc("alipayjsbridge://showBackButton?bshow=" + bshow)}

setTimeout(function() {
  var event;
  if (window.CustomEvent) {
    event = new CustomEvent('alipayjsbridgeready');
  } else {
    event = document.createEvent('Event');
    event.initEvent('alipayjsbridgeready', true, true);
  }
  document.dispatchEvent(event);
}, 0);
