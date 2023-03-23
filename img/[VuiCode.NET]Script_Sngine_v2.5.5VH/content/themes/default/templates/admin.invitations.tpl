{if $view == "generate"}
	<div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h5 class="modal-title">{__("New Invitation Code")}</h5>
	</div>
	<div class="modal-body">
	    <div class="text-center text-readable mb20">
	        {__("Your invitation code is")}
	        <span class="ml10 ptb5 plr20" style="border: 1px solid #ddd;">
	            {$code}
	        </span>
	    </div>
	</div>
{elseif $view == "prepare_email"}
	<div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h5 class="modal-title">{__("Send Invitation Code")}</h5>
	</div>
    <form class="js_ajax-forms" data-url="admin/invitations.php?do=send_email">
        <div class="modal-body">
            <div class="form-group">
                <label for="email">{__("Email")}</label>
                <input name="email" id="email" type="email" class="form-control" required autofocus>
                <input type="hidden" name="code" value="{$code}">
                <span class="help-block">
                    {__("To which email address you want to send this invitation code")}: <strong>{$code}</strong>
                </span>
            </div>

            <!-- success -->
            <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
            <!-- success -->

            <!-- error -->
            <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
            <!-- error -->
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">{__("Send")}</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
        </div>
    </form>
{/if}
