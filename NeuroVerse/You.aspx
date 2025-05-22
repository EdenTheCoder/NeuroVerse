<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="You.aspx.cs" Inherits="NeuroVerse.You" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script>
        function validatePassword(event) {
            

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
        function updatePreview() {
            var value = document.getElementById("pfp").value;
            var img = document.getElementById("img");
            img.src = "Imgs/pfp/" + value + ".jpg";
            img.alt = value;
        }
        setTimeout(updatePreview, 100)
    </script>


    <h1>Change data</h1>

<div style="display: grid; grid-template-columns: 1fr 1fr 0.5fr; width: 500px; margin:auto; align-items:center">
    <label for="username">User name *</label>
    <input type="text" name="username" id="username" disabled value="<%=username%>">
    <p id="usernameC" class="C"></p>

    <label for="email">Email *</label>
    <input type="text" name="email" id="email" value="<%=email%>" >
    <p id="emailC" class="C"></p>


    <label for="firstName">First name *</label>
    <input type="text" name="firstName" id="firstName" placeholder="first name" value ="<%=firstName %>"">
    <p id="firstnameC" class="C"></p>


    <label for="lastName">Last name</label>
    <input type="text" name="lastName" id="lastName" placeholder="last name" value="<%=lastName %>">
    <p id="lastnameC" class="C"></p>


    <label for="phone">Phone *</label>
    <input type="text" name="phone" id="phone" placeholder="phone" value="<%=phone %>">
    <p id="phoneC" class="C"></p>        


    <label for="light">light mode</label>
    <input type="checkbox" name="lightMode" <%=light %>/>
    <div></div>
    <hr />
    <hr />
    <hr />
    <p>Difficulty</p>
    <p>Difficulty</p>
    <div></div>
    <label for="Easy">Easy</label>
    <input type="radio" name="difficulty" id="Easy" value="Easy" <%=Easy %>/>
    <div></div>
    <label for="Medium">Medium</label>
    <input type="radio" name="difficulty" id="Medium" value="Medium" <%=Medium %>/>
    <div></div>
    <label for="Hard">Hard</label>
    <input type="radio" name="difficulty" id="Hard" value="Hard" <%=Hard %>/>
    <div></div>


    <label for="pfp">Profile Picture</label>
    <select id="pfp" name = "pfp" onchange = "updatePreview()">
        <option value="dog" <%=dog %> >dog</option>
        <option value="cat" <%=cat %> >cat</option>
        <option value="fish" <%=fish %>>fish</option>
        <option value="bird" <%=bird %>>bird</option>
        <option value="lizard" <%=lizard %>>lizard</option>
    </select>
    <img id="img" src="" alt="Alternate Text" style="height: 50px"/>

</div>
    <button type="submit" name="submit" onclick="validatePassword(event)">Submit</button>

</asp:Content>
