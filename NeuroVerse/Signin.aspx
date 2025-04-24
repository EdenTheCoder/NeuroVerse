<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="NeuroVerse.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="Signup.aspx">Dont have a account yet ? click here</a>
    <div style="display: grid; grid-template-columns: 1fr 1fr; width:500px; margin: auto">
        <lable for="username">User name</lable>
        <input type="text" name="username" id="username" placeholder="user name">

        <lable for="password">Password</lable>
        <input type="password" name="password" id="password" placeholder="password">
    </div>
    <h3><%=message %></h3>
    <button type="submit" name="submit">Sign In</button>
</asp:Content>
