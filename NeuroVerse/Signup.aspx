<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="NeuroVerse.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        function validatePassword(event) {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                event.preventDefault();
            }

        }
        function updatePreview() {
            var value = document.getElementById("pfp").value;
            var img = document.getElementById("img");
            img.src = "Imgs/pfp/" + value + ".jpg";
            img.alt = value;
        }
        setTimeout(updatePreview,100)


    </script>

    <h1>Sign Up</h1>

    <div style="display: grid; grid-template-columns: 1fr 1fr; width: 500px; margin: auto">
        <label for="username">User name *</label>
        <input type="text" name="username" id="username" placeholder="user name" required="required">

        <label for="password">Password *</label>
        <input type="password" name="password" id="password" placeholder="password" required="required">

        <label for="confirmPassword">Confirm Password *</label>
        <input type="password" id="confirmPassword" placeholder="confirm password" required="required">

        <label for="email">Email *</label>
        <input type="email" name="email" id="email" placeholder="email" required="required">

        <label for="firstName">First name *</label>
        <input type="text" name="firstName" id="firstName" placeholder="first name" required="required">

        <label for="lastName">Last name</label>
        <input type="text" name="lastName" id="lastName" placeholder="last name">

        <label for="phone">Phone *</label>
        <input type="text" name="phone" id="phone" placeholder="phone" required="required">
        
        <label for="light">light mode</label>
        <input type="checkbox" name="lightMode" />
        
        <hr />
        <hr />
        <p>Difficulty</p>
        <p>Difficulty</p>

        <label for="Easy">Easy</label>
        <input type="radio" name="difficulty" id="Easy" value="Easy" />

        <label for="Medium">Medium</label>
        <input type="radio" name="difficulty" id="Medium" value="Medium" />

        <label for="Hard">Hard</label>
        <input type="radio" name="difficulty" id="Hard" value="Hard" />

        <label for="pfp">Profile Picture</label>
        <select id="pfp",name = "pfp" onchange = "updatePreview()">
            <option value="dog">dog</option>
            <option value="cat">cat</option>
            <option value="fish">fish</option>
            <option value="bird">bird</option>
            <option value="lizard">lizard</option>
        </select>
        <label for="pfp">Profile Picture</label>
        <img id="img" src="" alt="Alternate Text" style="height: 100px"/>
    </div>
    <button type="submit" name="submit" id="submit" onclick="validatePassword(event)">Sign Up</button>
    <h3><%=message %></h3>

</asp:Content>
