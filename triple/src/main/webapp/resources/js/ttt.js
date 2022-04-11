var xhr = new XMLHttpRequest();
var url = 'http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'50kpvF4A6C3KKNrHUp%2BQYGPE8qlyf8mDIe2IICEh5eJDVivH5O%2F2mjOVnSYhDOP%2B5gekbjk9iWeryiVMciLd4g%3D%3D'; /*Service Key*/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
queryParams += '&' + encodeURIComponent('depPlaceId') + '=' + encodeURIComponent('NAT010000'); /**/
queryParams += '&' + encodeURIComponent('arrPlaceId') + '=' + encodeURIComponent('NAT011668'); /**/
queryParams += '&' + encodeURIComponent('depPlandTime') + '=' + encodeURIComponent('20201201'); /**/
queryParams += '&' + encodeURIComponent('trainGradeCode') + '=' + encodeURIComponent('00'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');