<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderEntries.aspx.cs" Inherits="BTI.ItemOrders.OrderEntries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: black;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }
        /* Full-width input fields */
        input[type=text], input[type=password] {
            /*width: 100%;*/
            padding: 15px;
            margin: 5px 0 22px 0;
            /*display: inline-block;*/
            border: none;
            background: #f1f1f1;
        }

        .required:after {
            content: "*";
        }
    </style>

    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-datepicker.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>

    
<!-- Bootstrap DatePicker -->
<script type="text/javascript">
    $(function () {
        $('[id*=txtInvoiceDate]').datepicker({
            changeMonth: true,
            changeYear: true,
            format: "dd/mm/yyyy",
            autoclose: true, 
            language: "tr"
        });
    });
</script>


</head>
<body>
    <form id="form1" runat="server">
        <%--<div style="max-width: 400px;">--%>
        <div>
            <h2 class="form-signin-heading">Order Entry</h2>
            <div class="row">

                <div class="form-control">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="txtInvoiceDate"><b>Invoice Date</b></label>
                            <asp:TextBox ID="txtInvoiceDate" runat="server" CssClass="form-control" placeholder="Please Enter Invoice Date (DD/MM/YYYY)" required />
                                                            <%--<span class="glyphicon glyphicon-calendar"></span>--%>
                            

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="txtInvoiceNumber">Invoice Number</label>
                            <asp:TextBox ID="txtInvoiceNumber" runat="server" CssClass="form-control" placeholder="Please Enter Invoice Number" required />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="txtDocTotal">Doc Total</label>
                            <asp:TextBox ID="txtDocTotal" runat="server" CssClass="form-control" placeholder="Please Enter doc Total" required />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="form-control">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="txtCustomerName">Customer Name</label>
                            <asp:TextBox ID="txtCustomerName" runat="server" CssClass="form-control" placeholder="Please Enter Customer Name" />
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="txtCustomerEmail">Customer Email</label>
                            <asp:TextBox ID="txtCustomerEmail" runat="server" CssClass="form-control" placeholder="Please Enter Customer Email" />
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="txtCustomerPhoneNumber">Customer Phone Number</label>
                            <asp:TextBox ID="txtCustomerPhoneNumber" runat="server" CssClass="form-control" placeholder="Please Enter Customer Phone Number" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="form-control">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="txtItemCode">Item Code</label>
                            <asp:TextBox ID="txtItemCode" runat="server" CssClass="form-control" placeholder="Please Enter Item Code" />
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="txtItemDescription">Item Description</label>
                            <asp:TextBox ID="txtItemDescription" runat="server" CssClass="form-control" placeholder="Please Enter Item Description" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div>
            <asp:Button ID="btnLogin" Text="Submit" runat="server" Class="btn btn-primary" OnClick="btnLogin_Click" />
            <asp:Button ID="btnClear" Text="Clear" runat="server" Class="btn btn-primary" />
        </div>
        <br />
        <br />
        <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
            <strong>Error!</strong>
            <asp:Label ID="lblMessage" runat="server" />
        </div>
        </div>
    </form>
</body>
</html>
