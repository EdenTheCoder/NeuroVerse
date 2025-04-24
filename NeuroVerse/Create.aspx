<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="NeuroVerse.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display: grid; grid-template-columns: 1fr 1fr; width: 500px; margin: auto">
        

        <lable for="Problem">Problem</lable>
        <input type="text" name="Problem" id="Problem" placeholder="problem">

        <lable for="Solution">Solution</lable>
        <input type="text" name="Solution" id="Solution" placeholder="solution">
    </div>
    <h3><%=message %></h3>
    <button type="submit" name="submit">Create Puzzle</button>
</asp:Content>
