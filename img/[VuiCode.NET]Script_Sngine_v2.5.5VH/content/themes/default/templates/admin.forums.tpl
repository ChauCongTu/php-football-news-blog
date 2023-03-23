<div class="panel panel-default">
    <div class="panel-heading with-icon">
        {if $sub_view == ""}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/forums/add_forum" class="btn btn-primary">
                    <i class="fa fa-plus"></i> {__("Add New Forum")}
                </a>
            </div>
        {elseif $sub_view == "add_forum" || $sub_view == "edit_forum"}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/forums" class="btn btn-default">
                    <i class="fa fa-arrow-circle-left"></i> {__("Go Back")}
                </a>
            </div>
        {/if}
        <i class="fa fa-comments pr5 panel-icon"></i>
        <strong>{__("Forums")}</strong>
        {if $sub_view == "settings"} &rsaquo; <strong>{__("Settings")}</strong>{/if}
        {if $sub_view == "add_forum"} &rsaquo; <strong>{__("Add New")}</strong>{/if}
        {if $sub_view == "edit_forum"} &rsaquo; <strong>{$data['forum_name']}</strong>{/if}
    </div>
    {if $sub_view == "settings"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/forums.php?do=settings">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Forums")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="forums_enabled">
                            <input type="checkbox" name="forums_enabled" id="forums_enabled" {if $system['forums_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                             {__("Turn the forums On and Off")}
                        </span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Online Users")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="forums_online_enabled">
                            <input type="checkbox" name="forums_online_enabled" id="forums_online_enabled" {if $system['forums_online_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show online users")}
                        </span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Statistics")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="forums_statistics_enabled">
                            <input type="checkbox" name="forums_statistics_enabled" id="forums_statistics_enabled" {if $system['forums_statistics_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show forums statistics")}
                        </span>
                    </div>
                </div>                

                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </form>
        </div>
    {elseif $sub_view == ""}
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover js_treegrid">
                    <thead>
                        <tr>
                            <th>{__("Title")}</th>
                            <th>{__("Description")}</th>
                            <th>{__("Threads")}</th>
                            <th>{__("Order")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            {include file='admin.forums.recursive_rows.tpl'}
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    {elseif $sub_view == "add_forum"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/forums.php?do=add_forum">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Name")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="forum_name">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Description")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="forum_description"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Section")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control" name="forum_section">
                            <option value="0" class="text-success">{__("Set as a Section")}</option>
                            {foreach $forums as $forum}
                                {include file='admin.forums.recursive_options.tpl'}
                            {/foreach}
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Order")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="forum_order">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </form>
        </div>
    {elseif $sub_view == "edit_forum"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/forums.php?do=edit_forum&id={$data['forum_id']}">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Name")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="forum_name" value="{$data['forum_name']}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Description")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="forum_description">{$data['forum_description']}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Section")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control" name="forum_section">
                            <option value="0" class="text-success">{__("Set as a Section")}</option>
                            {foreach $data['sections'] as $forum}
                                {include file='admin.forums.recursive_options.tpl'}
                            {/foreach}
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Order")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="forum_order" value="{$data['forum_order']}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </form>
        </div>
    {/if}
</div>