﻿<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Checkout</h1>

    <style type="text/css">
    .checkoutInput
    {
      display: block;
    }
  </style>
     <div class="col-md-4">
         <h2>Delivery Info:</h2>
        First Name:  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage=" Please enter a first name" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtFirstName" CssClass="form-control checkoutInput" runat="server" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
        Last Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtLastName" ErrorMessage=" Please enter a last name." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TxtLastName" CssClass="form-control checkoutInput" runat="server"></asp:TextBox>
        Address:<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage=" Please enter your address." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtAddress" CssClass="form-control checkoutInput" runat="server"></asp:TextBox>
        ZIP Code:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtZIP" ErrorMessage=" Please enter your ZIP code." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtZIP" CssClass="form-control checkoutInput" runat="server" MaxLength="5"></asp:TextBox>
         Phone Number:<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please enter your phone number." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPhone" CssClass="form-control checkoutInput" runat="server" MaxLength="10"></asp:TextBox>
    </div>
     
    <div class="col-md-4">
        <h2>Billing Info:</h2>
        First Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtFirstNameB" ErrorMessage="Please enter a first name." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtFirstNameB" CssClass="form-control checkoutInput" runat="server"></asp:TextBox>
        Last Name:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtLastNameB" ErrorMessage="Please enter a last name." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TxtLastNameB" CssClass="form-control checkoutInput" runat="server"></asp:TextBox>
        Address:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddressB" ErrorMessage="Please enter an address." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAddressB" CssClass="form-control checkoutInput" runat="server"></asp:TextBox>
        ZIP Code:<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtZIPB" ErrorMessage="Please enter a ZIP code." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtZIPB" CssClass="form-control checkoutInput" runat="server" MaxLength="5"></asp:TextBox>
        
        State:
        <asp:DropDownList ID="ddlState" CssClass="form-control checkoutInput" runat="server">
	    <asp:ListItem Value="AL">Alabama</asp:ListItem>
	    <asp:ListItem Value="AK">Alaska</asp:ListItem>
	    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	    <asp:ListItem Value="CA">California</asp:ListItem>
	    <asp:ListItem Value="CO">Colorado</asp:ListItem>
	    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	    <asp:ListItem Value="DE">Delaware</asp:ListItem>
	    <asp:ListItem Value="FL">Florida</asp:ListItem>
	    <asp:ListItem Value="GA">Georgia</asp:ListItem>
	    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	    <asp:ListItem Value="ID">Idaho</asp:ListItem>
	    <asp:ListItem Value="IL">Illinois</asp:ListItem>
	    <asp:ListItem Value="IN">Indiana</asp:ListItem>
	    <asp:ListItem Value="IA">Iowa</asp:ListItem>
	    <asp:ListItem Value="KS">Kansas</asp:ListItem>
	    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	    <asp:ListItem Value="ME">Maine</asp:ListItem>
	    <asp:ListItem Value="MD">Maryland</asp:ListItem>
	    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	    <asp:ListItem Value="MI">Michigan</asp:ListItem>
	    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	    <asp:ListItem Value="MO">Missouri</asp:ListItem>
	    <asp:ListItem Value="MT">Montana</asp:ListItem>
	    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	    <asp:ListItem Value="NV">Nevada</asp:ListItem>
	    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	    <asp:ListItem Value="NY">New York</asp:ListItem>
	    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	    <asp:ListItem Value="OH">Ohio</asp:ListItem>
	    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	    <asp:ListItem Value="OR">Oregon</asp:ListItem>
	    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	    <asp:ListItem Value="TX">Texas</asp:ListItem>
	    <asp:ListItem Value="UT">Utah</asp:ListItem>
	    <asp:ListItem Value="VT">Vermont</asp:ListItem>
	    <asp:ListItem Value="VA">Virginia</asp:ListItem>
	    <asp:ListItem Value="WA">Washington</asp:ListItem>
	    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
    </asp:DropDownList>
        Issuer:
        <asp:DropDownList ID="ddlCardType" CssClass="form-control checkoutInput" runat="server">
            <asp:ListItem Value="American Express">American Express</asp:ListItem>
	        <asp:ListItem Value="Discover">Discover</asp:ListItem>
	        <asp:ListItem Value="Mastercard">Mastercard</asp:ListItem>
	        <asp:ListItem Value="Visa">Visa</asp:ListItem>
        </asp:DropDownList>
        Credit Card Number:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCCN" ErrorMessage="Please enter a CC number." ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:TextBox ID="txtCCN" CssClass="form-control checkoutInput" runat="server" MaxLength="16"></asp:TextBox>
        
        Expiration Date<br />
        <asp:DropDownList style="float:left; margin-right:20px" Width ="100px" ID="ddlExpMonth" CssClass="form-control checkoutInput" runat="server">
            <asp:ListItem Value="01">January</asp:ListItem>
	        <asp:ListItem Value="02">February</asp:ListItem>
	        <asp:ListItem Value="03">March</asp:ListItem>
	        <asp:ListItem Value="04">April</asp:ListItem>
            <asp:ListItem Value="05">May</asp:ListItem>
	        <asp:ListItem Value="06">June</asp:ListItem>
	        <asp:ListItem Value="07">July</asp:ListItem>
	        <asp:ListItem Value="08">August</asp:ListItem>
	        <asp:ListItem Value="09">September</asp:ListItem>
	        <asp:ListItem Value="10">October</asp:ListItem>
	        <asp:ListItem Value="11">November</asp:ListItem>
	        <asp:ListItem Value="12">December</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList style="float:left" Width="90px" ID="ddlExpYear" CssClass="form-control checkoutInput" runat="server">
            <asp:ListItem Value="2017">2017</asp:ListItem>
	        <asp:ListItem Value="2018">2018</asp:ListItem>
	        <asp:ListItem Value="2019">2019</asp:ListItem>
	        <asp:ListItem Value="2020">2020</asp:ListItem>
            <asp:ListItem Value="2021">2021</asp:ListItem>
	        <asp:ListItem Value="2022">2022</asp:ListItem>
	        <asp:ListItem Value="2023">2023</asp:ListItem>
            <asp:ListItem Value="2024">2024</asp:ListItem>
        </asp:DropDownList>
        <br />
        CVC Code:<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCCV" ErrorMessage="Please enter security code." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtCCV" CssClass="form-control checkoutInput" runat="server" MaxLength="3"></asp:TextBox>


    </div>

    <div class="col-md-4">
        <h1>Shopping Cart:</h1>
        <asp:ListBox CssClass="form-control" ID="lstCart" runat="server" Width="400px"></asp:ListBox>
        <br />
        Tax: $<asp:Label ID="lblTax" runat="server" /><br />
        Delivery Fee: $<asp:Label ID="lblDeliveryFee" runat="server" />
        <br />
        Total: $<asp:Label ID="lblTotal" runat="server"/><br />

        <br /><asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" onClick="btnSubmit_Click" Width="70px" />
        <br />
        <br />
        <asp:Button ID="btnContinueShopping" runat="server" Text="Continue Shopping" CssClass="btn btn-primary" PostBackUrl="~/Order.aspx" Width="150px" CausesValidation="false"  />
        <br />
        <asp:Label ID="lblNoItemsInCart" runat="server" ForeColor="Red"></asp:Label>

        <br />

        <asp:Label ID="ErrorMessage" runat="server" ViewStateMode="Disabled" ></asp:Label>

    </div>

</asp:Content>
