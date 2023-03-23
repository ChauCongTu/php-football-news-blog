<div class="panel panel-default">
    <div class="panel-heading with-icon">
        <i class="fa fa-bell pr5 panel-icon"></i>
        <strong>{__("Mass Notifications")}</strong>
    </div>
    <div class="panel-body">

        <!-- Mass Notifications -->
        <form class="js_ajax-forms form-horizontal" data-url="admin/notifications.php">

            <div class="alert alert-warning">
                <div class="icon">
                    <i class="fa fa-bell fa-2x"></i>
                </div>
                <div class="text">
                    <strong>{__("Mass Notifications")}</strong><br>
                    {__("Enable you to send notifications to all site users")}.<br>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">
                    {__("URL")}
                </label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="url">
                    <span class="help-block">
                        {__("Notification link used when user clicks on the notification")}
                    </span>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-3 control-label">
                    {__("Message")}
                </label>
                <div class="col-sm-9">
                    <textarea class="form-control" rows="3" name="message"></textarea>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-9 col-sm-offset-3">
                    <button type="submit" class="btn btn-primary">{__("Send")}</button>
                </div>
            </div>

            <!-- success -->
            <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
            <!-- success -->

            <!-- error -->
            <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
            <!-- error -->

        </form>
        <!-- Mass Notifications -->
        
    </div>
</div>