
<?php
include 'header.php';
include 'menu.php';
?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Dashboard
            <small>Control panel</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="box">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <div>
                                    <strong>User Application form for passport</strong>
                                </div>
                            </div>

                        </div>
                        <div class="panel-body">
                            <!--<form action="<?php echo current_url(); ?>" method="POST" class="form-horizontal">-->
                                <?= form_open_multipart( current_url(),array(
                                    'method' => 'POST' ,
                                    'class' => 'form-horizontal'
                                ))?>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Applicants Name</label>
                                    <div class="col-sm-9">

                                        <input type="text" name="name" class="form-control" required=""/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Address</label>
                                    <div class="col-sm-9">

                                        <input type="text" inputmode="multiline" name="address" class="form-control" required=""/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">District</label>
                                    <div class="col-sm-9">

                                        <select class="form-control" name="district_id">
                                            <option value="1">Select District</option>
                                            <option value="2">dhaka</option>
                                        </select>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Upazila</label>
                                    <div class="col-sm-9">

                                        <select class="form-control" name="upazila_id">
                                            <option value="2">Select Upazila</option>
                                            <option value="1"></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Union</label>
                                    <div class="col-sm-9">

                                        <select class="form-control" name="union_id">
                                            <option value="union_id">Select Union</option>
                                            <option value="1"></option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Fathers Name</label>
                                    <div class="col-sm-9">

                                        <input type="text"  name="father_name" class="form-control"/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Mothers Name</label>
                                    <div class="col-sm-9">

                                        <input type="text"  name="mother_name" class="form-control" required/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Sex</label>
                                    <div class="col-sm-9">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1"  name="sex" class="checkbox"/> Male
                                            </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"  value="2"  name="sex" class="checkbox"/> Female
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">NID</label>
                                    <div class="col-sm-9">

                                        <input type="text"  name="nid" class="form-control"/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Photo</label>
                                    <div class="col-sm-9">

                                        <input type="file"  name="photo_url"/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">NID Document</label>
                                    <div class="col-sm-9">

                                        <input type="file"  name="nid_url"/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Fingure Print</label>
                                    <div class="col-sm-9">

                                        <input type="file"  name="fingure_print_url"/>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Identifier</label>
                                    <div class="col-sm-9">

                                        <select class="form-control" name="identifier_id">
                                            <option>Select Identifier</option>
                                            <option value="1"></option>
                                        </select>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3"></label>
                                    <div class="col-sm-9">

                                        <button type="submit" name="btnSave" class="btn btn-success">Apply</button>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<?php
include 'footer.php';
?>