<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="NeuroVerse.ShowTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table, tr, td {
            border: 3px solid white;
            border-collapse: collapse;
            padding: 5px;
        }

        table {
            width: 100%;
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Show Table</h1>
    <h2>Filtering</h2>

    <select name="filter">
        <option value="Username">user name</option>
        <option value="Firstname">first name</option>
        <option value="Lastname">last name</option>
        <option value="Password">Password</option>
        <option value="Email">Email</option>
        <option value="Phone">Phone</option>
        <option value="Solved">Solved</option>
        <option value="lightMode">Light Mode</option>
        <option value="Difficulty">Difficulty</option>



        
    </select>
    <input type="text" name="filterText">


    <button type="submit" name="submit">RUN</button>
    <table>
        <tr>
            <td>Username</td>
            <td>Firstname</td>
            <td>Lastname</td>
            <td>Password</td>
            <td>Email</td>
            <td>Phone</td>
            <td>Solved</td>
            <td>Light Mode</td>
            <td>difficulty</td>

            <td>Delete user</td>


        </tr>
        <%=table %>
    </table>

</asp:Content>
