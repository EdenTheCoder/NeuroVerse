<%@ Page Title="" Language="C#"
    MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Poll.aspx.cs"
    Inherits="NeuroVerse.Poll" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>
<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <h1 id="win"></h1>
    <div
        style="display: grid; grid-template-columns: 200px 200px; width: 400px; margin: auto;">
        <div>
            <h2 id="dark"><%=dark %></h2>
            <button name="dark">Add 1 To Dark Mode</button>
        </div>
        <div>
            <h2 id="light"><%=light %></h2>
            <button name="light">Add 1 To Light Mode</button>
        </div>
    </div>
    <script>
        light = document.getElementById("light");
        dark = document.getElementById("dark");
        win = document.getElementById("win");
        function update() {
            if (parseInt(light.innerText) > parseInt(dark.innerText))
                win.innerText = "Light is winning";
            else win.innerText = "Dark is winning";

        }

        dark.addEventListener("click", update);
        light.addEventListener("click", update);
        update()
    </script>
</asp:Content>
