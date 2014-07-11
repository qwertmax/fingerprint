//(function($) {
//    $(document).ready(function(){
//        $("#flashcontent").flash(
//            {
//                "src": "assets/fonts2.swf",
//                "width": "1",
//                "height": "1",
//                "swliveconnect": "true",
//                "id": "flashfontshelper",
//                "name": "flashfontshelper"
//            },
//            { update: false }
//        );
//
//
//        var values = ['getCanvasFingerprint', 'getIEPluginsString', 'getPluginsString', 'getRegularPluginsString', 'getScreenResolution']
//        var dataObj = {}
//        var fp1 = new Fingerprint();
//
//        for(var val in values){
//            var
//                value = fp1[values[val]](),
//                name = values[val],
//                hash = '';
//
////      if(typeof value == 'string'){
////        hash = SHA256(value);
////      }else{
////        hash = value.join(':');
////        hash = SHA256(hash);
////      }
//
//            dataObj[values[val]] = value;
//
//            $('.table tbody').append(addRow(name, value, 1));
//        }
//
//        dataObj.fingerprint = fp1.get();
//
//        var uniqueID = fetch_client_whorls();
//        setTimeout(function(){
//            uniqueID = fetch_client_whorls();
//            var hash_text = JSON.stringify(uniqueID);
//            var hash = SHA256(hash_text);
//            $('#fingerprint').append("<div class=''><span class='name'>Custom value:</span><span class='value'>"+ hash +"</span></div>");
//            dataObj.fp = hash;
//
//            var rows = '';
//            for(var i in uniqueID){
//                dataObj[i] = uniqueID[i];
//                rows += addRow(i, uniqueID[i], 1);
//            }
//            $('.table tbody').append(rows);
//
//            $.ajax({
//                type: 'POST',
////                url: '/userData.php',
//                url: '/userdata',
//                data: {data: JSON.stringify(dataObj)},
//                success: function(data){
//                    data = JSON.parse(data);
//                    $('#uid').html("<div><strong>UserID</strong>: <span>"+ data[0] +"</span></div>");
//                }
//            });
//
//        }, 1000);
//
//        $('#fingerprint').append("<div class=''><span class='name'>Fingerprint value:</span><span class='value'>"+ fp1.get() +"</span></div>");
//
//    });
//
//})(jQuery)
//
//function addRow(name, value, hash){
//    return "<tr>" +
//        "<td class='name'>"+ name +"</td>" +
////    "<td class='hash'>"+ hash +"</td>" +
//        "<td class='value long-value'><div>"+ value +"</div></td>" +
//        "</tr>";
//}
