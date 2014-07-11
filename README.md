Use next js code as snippet

```
    <script src="http://localhost:3000/fp.js"></script>
    <script type="text/javascript">
    (function($) {
        $(document).ready(function(){
            var fp1 = new Fingerprint();
            var domain = 'http://localhost:3000'

            $.ajax({
                type: 'GET',
                url: domain + '/userdata',
                data: {site: {fp: fp1.get(), sitename: location.host, uri: location.pathname}, readonly:"true"},
                dataType: 'json',
                success: function(data){
                    var fp = data.fp;
                }
            });
        });

    })(jQuery)
    </script>
```

And this is what you get back:

```
    {
       "fp":"465910041",
       "created_at":"2014-02-28T11:36:57.042Z",
       "visits":{
          "total":1,
          "sites":[
             {
                "sitename":"localhost:3000",
                "uri":"/dummy222.html",
                "count":1
             }
          ]
       }
    }
```