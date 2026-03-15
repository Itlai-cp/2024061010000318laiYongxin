<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New User Registration!</title>
    <script type="text/javascript">
        function checkForm() {
            var username = document.getElementById("username").value;
            var pwd = document.getElementById("pwd").value;
            var email = document.getElementById("email").value;
            var birth = document.getElementById("birth").value;
            var gender = document.getElementsByName("gender");
            var isGender = false;

            for (var i = 0; i < gender.length; i++) {
                if (gender[i].checked) {
                    isGender = true;
                    break;
                }
            }

            if (username.trim() === "") {
                alert("Username is required! 用户名不能为空！");
                return false;
            }
            if (pwd.trim() === "" || pwd.length < 8) {
                alert("Password is required and at least 8 characters! 密码不能为空且长度至少8位！");
                return false;
            }
            var emailReg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            if (email.trim() === "" || !emailReg.test(email)) {
                alert("Email is required and format must be valid! 邮箱不能为空且格式必须合法！");
                return false;
            }
            if (!isGender) {
                alert("Gender is required! 性别必须选择！");
                return false;
            }
            var birthReg = /^\d{4}-\d{2}-\d{2}$/;
            if (birth.trim() === "" || !birthReg.test(birth)) {
                alert("Birthdate is required and format must be yyyy-mm-dd! 出生日期不能为空且格式必须为yyyy-mm-dd！");
                return false;
            }
            alert("Registration verification passed! 注册验证通过！");
            return true;
        }
    </script>
</head>
<body>
<h3>New User Registration!</h3>
<form action="" method="post" onsubmit="return checkForm()">
    Username：<input type="text" id="username" name="username"><br><br>
    Password：<input type="password" id="pwd" name="pwd"><br><br>
    Email：<input type="text" id="email" name="email"><br><br>
    Gender：
    <input type="radio" name="gender" value="male">Male
    <input type="radio" name="gender" value="female">Female<br><br>
    Date of Birth (yyyy-mm-dd)：<input type="text" id="birth" name="birth"><br><br>
    <input type="submit" value="Register">
</form>
</body>
</html>