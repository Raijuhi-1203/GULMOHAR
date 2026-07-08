<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add-photo.aspx.cs" Inherits="admin_add_photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert" id="alert_container"></div>

    <asp:Label ID="lblquery" hidden runat="server" Text=""></asp:Label>

    <section class="content">
        <div class="container-fluid">

            <div class="card card-danger">

                <div class="card-header">
                    <h3 class="card-title">Add Photo</h3>

                </div>

                <div class="card-body">

                    <div class="row">


                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Photo (Recommended Size 2 MB)<span style="color: red">&nbsp;*</span> </label>
                                <asp:FileUpload ID="uploadphoto" class="form-control" runat="server" />
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer">
                        <button type="button" id="btnsave" runat="server" class="btn btn-success" onserverclick="btnsave_ServerClick">Submit & Save</button>
                    </div>

                </div>
            </div>
        </div>
    </section>



</asp:Content>

