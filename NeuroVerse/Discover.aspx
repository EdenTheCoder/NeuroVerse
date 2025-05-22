<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Discover.aspx.cs" Inherits="NeuroVerse.Discover" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script>
        function showSolution() {
            let solution = document.getElementById("solution");
            if (solution.style.display == "none") {
                solution.style.display = "block";
            } else {
                solution.style.display = "none";
            }
        }


    </script>

    <style>
        #solution {
            display: none;
            background-color: #403f3f;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px;
            margin: 10px;
        }

        #con {
            width: 300px;
            margin: auto;
            padding: 20px;
            background: #828181;
            border-radius: 20px;
        }
    </style>

    <div id="con">
        <p>Made By <%=creator %></p>
        <img src="Imgs/pfp/<%=Pfp%>.jpg" style="max-height:50px">
        <p><%=p %></p>
        <p>Difficulty : <%=d %></p>
        <button onclick="showSolution()" type="button">Show Solution</button>


        <div id="solution">
            <p><%=s %></p>
            <button name="inc" <%=hide %>>This puzzle was Hard</button>
            <button name="solved" <%=hide %>>Solved</button>
        </div>


    </div>


</asp:Content>
