<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebformDemo.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<%--    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>--%>

    <div class="p-4 container">
        <div class="col-md-20">
            <%--Name Text Box--%>
            <div class="md-3">
                <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                <asp:CustomValidator 
                    ID="customValidator1" runat="server" OnServerValidate="ValidateControls" ControlToValidate="txtName" 
                    ErrorMessage="Name should have atleast 2 Characters" style="color:red"> 
                </asp:CustomValidator>
                <br />
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is mandatory" ControlToValidate="txtName" style="color:red">
                </asp:RequiredFieldValidator>
            </div>
            <%--Email Text Box--%>
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter a valid Email" 
                    ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="color:red">
                </asp:RegularExpressionValidator>
            </div>
            <%--Re-enter Email Text Box--%>
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Re-enter Email:" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmailRe" CssClass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Email do not match" 
                    ControlToValidate="txtEmail" 
                    ControlToCompare="txtEmailRe" style="color:red">
                </asp:CompareValidator>
            </div>
            <%--Age Text Box--%>
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Age:" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Valid Age" 
                    ControlToValidate="txtAge" MaximumValue="130" MinimumValue="18" Type="Integer" style="color:red">
                </asp:RangeValidator>
            </div>
            <%--Subject Text Box--%>
            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" Text="Subject:" CssClass="form-label"></asp:Label>
                <asp:TextBox runat="server" ID="txtSubject" CssClass="form-control"></asp:TextBox>
            </div>
            <%--Message Text Box--%>
            <div class="md-3">
                <asp:Label ID="Label6" runat="server" Text="Your Message:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Columns="60" Rows="5" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Message is mandatory" 
                    ControlToValidate="txtMsg" style="color:red">
                </asp:RequiredFieldValidator>
            </div>
            <%--Display Overall Validation--%>
            <div class="mb-3">
                <asp:ValidationSummary ID="ValidationSummary" runat="server" style="color:red" />
            </div>
            <%--Submit Button--%>
            <div class="mb-5">
                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
