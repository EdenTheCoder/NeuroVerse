<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="NeuroVerse.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>What we do ?</h1>
    <ul style="max-width: 500px; text-align: left; margin: auto">
        <li>Previde a Fast Website</li>
        <li>help the comunity come together</li>
    </ul>

    <style>
        table, tr, td {
            border: solid black 3px;
            border-collapse: collapse;
            margin:auto;
            padding: 10px
        }
    </style>
    <h1>our features</h1>
    <table>
        <tr>
            <td>feature</td>
            <td>Why that feature</td>
        </tr>
        <tr>
            <td>Fast</td>
            <td rowspan="2">We use the latest technology to make our website fast</td>
        </tr>
        <tr>
            <td>Responsive</td>

        </tr>
        <tr>
            <td>Create puzzles</td>
            <td>Helps with bringing the comunity together</td>
        </tr>
    </table>

    <h3>Here are some photos of our offices</h3>
    <img src="Imgs/meeting.jpg" />
    <img src="Imgs/meeting%20but%20no1%20came.jpg" />

</asp:Content>
