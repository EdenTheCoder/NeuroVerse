<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="NeuroVerse.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        table, td, tr {
            border: 1px solid;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .math {
        background-color: red;
        }

        .english {
        background-color: blue;
        }

        .hebrew {
        background-color: green;
        }

        .trips {
        background-color: orange;
        }

        .sports {
        background-color: yellow;
        }

        .history {
        background-color: brown;
        }

        .science {
        background-color: lightblue;
        }

        .physics {
        background-color: purple;
        }

        .bible {
        background-color: gold;
        }

        .literature {
        background-color: pink;
        }

        .computers {
        background-color: gray;
        }
        .arabic {
        background-color: lightgreen;
        }
        .robotics {
            background-color: lightcoral;
        }


    </style>
    <table>
        <tr>
            <td class="math" rowspan="2">math</td>
            <td class="math">math</td>
            <td class="math" rowspan="2">math</td>
            <td class="arabic">arabic</td>
            <td class="robotics" rowspan="2">robotics</td>
        </tr>
        <tr>
            
            <td class="history">history</td>
            
            <td class="bible">bible</td>



        </tr>
        <tr>
            <td class="english">english</td>
            <td class="bible">bible</td>
            <td class="science" rowspan="2">science</td>
            <td class="hebrew">hebrew</td>
            <td class="english">english</td>

        </tr>
        <tr>
            <td class="physics">physics</td>
            
            <td class="science">science</td>
            <td class="sports">sports</td>
            <td class="bible">bible</td>
        </tr>

        <tr>
            <td class="hebrew">hebrew</td>
            <td class="english" rowspan="2">english</td>
            <td class="arabic">arabic</td>
            <td class="literature">literature</td>
            <td class="computers" rowspan="2">computers</td>

            
        </tr>

        <tr>
            <td class="trips">trips</td>
            <td class="bible">bible</td>
            <td class="physics">physics</td>

        </tr>

        <tr>
            <td class="sports">sports</td>
            <td></td>
            <td class="bible" rowspan="2">bible</td>
            <td class="science">science</td>
            <td class="math">math</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td class="history">history</td>
        </tr>
    </table>
</asp:Content>
