<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="NeuroVerse.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        function validatePassword(event) {
            let password = document.getElementById("password").value;
            let confirmPassword = document.getElementById("confirmPassword").value;
            let passwordC = document.getElementById("passwordC");
            if (password != confirmPassword || password.length<3) {
                passwordC.innerHTML = "Passwords do not match or arnt long enf";
                event.preventDefault();
                return;
            } else {
                passwordC.innerHTML = "";
            }

            let email = document.getElementById("email").value;
            let emailC = document.getElementById("emailC")
            let emailRegex = /^[\w]{2,}@[\w]{2,}\.[\w]{2,}$/;
            if (!(email.match(emailRegex))) {
                emailC.innerHTML = "Invalid email";
                event.preventDefault();
                return;
            } else {
                emailC.innerHTML = "";
            }

            let phone = document.getElementById("phone").value;
            let phoneC = document.getElementById("phoneC")
            let phoneRegex = /^[\d]{10}$/;
            if (!phone.match(phoneRegex)) {
                phoneC.innerHTML = "Invalid phone number";
                event.preventDefault();
                return;
            } else {    
                phoneC.innerHTML = "";
            }

            let username = document.getElementById("username").value;
            let usernameC = document.getElementById("usernameC")
            let usernameRegex = /^[\w]{2,}$/;
            if (!username.match(usernameRegex)) {
                usernameC.innerHTML = "Invalid username";
                event.preventDefault();
                return;
            } else {
                usernameC.innerHTML = "";
            }
            let firstName = document.getElementById("firstName").value;
            let firstNameC = document.getElementById("firstnameC")
            if (firstName.length < 2) {
                firstNameC.innerHTML = "Invalid first name";
                event.preventDefault();
                return;
            } else {
                firstNameC.innerHTML = "";
            }
            



        }

    </script>
    <style>
        .C {
            color: red;
            font-size: 12px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
    </style>
    <h1>Sign Up</h1>

    <div style="display: grid; grid-template-columns: 1fr 1fr 0.5fr; width: 500px; margin: auto">
        <label for="username">User name *</label>
        <input type="text" name="username" id="username" placeholder="user name" >
        <p id="usernameC" class="C"></p>

        <label for="password">Password *</label>
        <input type="password" name="password" id="password" placeholder="password" >
        <p id="passwordC" class="C"></p>
        
        <label for="confirmPassword">Confirm Password *</label>
        <input type="password" id="confirmPassword" placeholder="confirm password" >
        <p id="passwordC" class="C"></p>

        <label for="email">Email *</label>
        <input type="text" name="email" id="email" placeholder="email" >
        <p id="emailC" class="C"></p>
        

        <label for="firstName">First name *</label>
        <input type="text" name="firstName" id="firstName" placeholder="first name" >
        <p id="firstnameC" class="C"></p>


        <label for="lastName">Last name</label>
        <input type="text" name="lastName" id="lastName" placeholder="last name">
        <p id="lastnameC" class="C"></p>


        <label for="phone">Phone *</label>
        <input type="text" name="phone" id="phone" placeholder="phone" >
        <p id="phoneC" class="C"></p>        


        <label for="light">light mode</label>
        <input type="checkbox" name="lightMode" />
        <div></div>
        <hr />
        <hr />
        <hr />
        <p>Difficulty</p>
        <p>Difficulty</p>
        <div></div>
        <label for="Easy">Easy</label>
        <input type="radio" name="difficulty" id="Easy" value="Easy" />
        <div></div>
        <label for="Medium">Medium</label>
        <input type="radio" name="difficulty" id="Medium" value="Medium" />
        <div></div>
        <label for="Hard">Hard</label>
        <input type="radio" name="difficulty" id="Hard" value="Hard" />
        <div></div>
    </div>
    <button type="submit" name="submit" id="submit" onclick="validatePassword(event)">Sign Up</button>
    <h3><%=message %></h3>

</asp:Content>
