<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="You.aspx.cs" Inherits="NeuroVerse.You" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Change data</h1>

<div style="display: grid; grid-template-columns: 1fr 1fr; width: 500px; margin:auto">
    <label for="username">User name *</label>
    <input type="text" name="username" id="username" placeholder="user name" required ="required" disabled value="<%=username %>">

    <label for="password">Password *</label>
    <input type="text" name="password" id="password" placeholder="password" required ="required" value="<%=password %>">

    

    <label for="email">Email *</label>
    <input type="email" name="email" id="email" placeholder="email" required ="required" value="<%=email %>">

    <label for="firstName">First name *</label>
    <input type="text" name="firstName" id="firstName" placeholder="first name" required ="required" value="<%=firstName %>">

    <label for="lastName">Last name</label>
    <input type="text" name="lastName" id="lastName" placeholder="last name" value="<%=lastName%>">

    <label for="phone">Phone *</label>
    <input type="text" name="phone" id="phone" placeholder="phone" required ="required" value ="<%=phone %>">

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



</div>
    <button type="submit" name="submit">Submit</button>

</asp:Content>
