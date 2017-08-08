
    var flag = true;
    var userEmail = null;
    var userNick = null;

    $(function () {
        $(':button[name=findMember]').click(function () {
            if (flag) {
                $(this).attr('disabled', 'disabled');
                $(':input[name=inputauth]').css('display', 'block');

                setTimeout(function () {
                    $(':button[name=findMember]').removeAttr('disabled');
                }, 3000);

                dailyMissionTimer();
                alert(flag);
                flag = false;
            } else {
                alert(flag);
            }
        });

        $(':button[name=login]').click(function () {

            var email = $(":input[name=email]");
            var pwd = $(":input[name=psw]");

            var logIn = {
                "email": email.val(),
                "pwd": pwd.val()
            };

            if (!email.val()) email.css("border-color", "red");
            else email.css("border-color", "#ccc");

            if (!pwd.val()) pwd.css("border-color", "red");
            else pwd.css("border-color", "#ccc");

            /*if (email.val() && pwd.val()) {
                $.ajax({
                    url: "/Floracion/mlogin",
                    type: 'POST',
                    data: logIn,
                    dataType: "json",
                    success: function (member) {
                        if (member.member != null) {
                            userEmail = "<%=session.getAttribute("
                            email ")%>";
                            userNick = "<%=session.getAttribute("
                            nick ")%>";

                            alert(member.member + "님 환영합니다.");
                            $('#id01').css('display', 'none');


                            alert("<%=session.getAttribute("
                                member ")%>");

                            alert("메인 페이지를 띄워라" + userEmail + "/" + userNick);
                            window.location.reload();
                        } else alert("이메일 또는 비밀번호 오류!!");

                    },
                    error: function () {
                        alert("ERROR!!");
                    }
                });
            }*/

        });
    });

    function dailyMissionTimer() {
        var time = 10;
        var minutes, seconds;
        interval = setInterval(function () {
            minutes = parseInt(time / 60, 10);
            seconds = parseInt(time % 60, 10);
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            $(':button[name=findMember]').text(minutes + ":" + seconds + " 내에 클릭");
            if (--time < 0) {
                time = 0;
                $(':button[name=findMember]').attr('disabled', 'disabled');
                $(':button[name=findMember]').text("시간 초과");
                clearInterval(interval);
            }
        }, 1000);
    }


    function findInfo() {
        $('#id02').css('display', 'block');
        $('#id01').css('display', 'none');
    }
