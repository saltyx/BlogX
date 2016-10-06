// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function () {
    var timer = "slow"
    flag = false
    $('#baidu_hint1').hide()
    $('#baidu_hint2').hide()
    $('#baidu_hint3').hide()
    $('#baidu_hint4').hide()
    $('#word').hide()
    $('#baidu_hint').animate({margin:'150px'},timer,moving1)

    function moving1() {
        $('#baidu_hint1').show()
        $('#baidu_hint1').animate({margin:'150px'},timer,moving2)
    }

    function moving2() {
        $('#baidu_hint2').show()
        $('#baidu_hint2').animate({margin:'150px'},timer,moving3)
    }

    function moving3() {
        $('#word').show()
        $('#word').animate({fontSize:'30px',margin:'150px'},timer,moving3_1)

    }
    function moving3_1() {
        $('#word').animate({fontSize:'60px'},timer,moving4)
    }
    function moving4() {
        $('#baidu_hint3').show()
        $('#baidu_hint3').animate({margin:'150px'},timer,moving5)
    }
    function moving5() {
        $('#baidu_hint4').show()
        $('#baidu_hint4').animate({fontSize:'15px'},timer,movingEnd)
    }

    function movingEnd() {
        if (flag == false){
            flag = true
            Materialize.toast('好了，我给你演示一遍了，是不是发现百度很好用？',4000,'',function (){
                window.location.href = 'https://www.baidu.com/s?wd='+$('#word').text()
            } )
        }
    }
})
