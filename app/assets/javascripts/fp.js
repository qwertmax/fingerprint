(function($) {
    $(document).ready(function(){
        var fp1 = new Fingerprint();
        var domain = 'http://localhost:3000';

        $.ajax({
            type: 'GET',
            url: domain + '/userdata',
            data: {site: {fp: fp1.get(), fingerprint: fp1.get(), sitename: location.host, uri: location.pathname}},
            success: function(data){
                var uid = data;
            }
        });
    });

})(jQuery)
