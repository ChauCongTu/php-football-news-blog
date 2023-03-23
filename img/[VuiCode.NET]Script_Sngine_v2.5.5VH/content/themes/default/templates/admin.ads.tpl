<div class="panel panel-default">
    <div class="panel-heading with-icon">
        {if $sub_view == "system_ads"}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/ads/add" class="btn btn-primary">
                    <i class="fa fa-plus"></i> {__("Add New Ads")}
                </a>
            </div>
        {elseif $sub_view == "add" || $sub_view == "edit"}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/ads/system_ads" class="btn btn-default">
                    <i class="fa fa-arrow-circle-left"></i> {__("Go Back")}
                </a>
            </div>
        {/if}
        <i class="fa fa-dollar-sign pr5 panel-icon"></i>
        <strong>{__("Ads")}</strong>
        {if $sub_view == ""} &rsaquo; <strong>{__("Settings")}</strong>{/if}
        {if $sub_view == "system_ads"} &rsaquo; <strong>{__("System Ads")}</strong>{/if}
        {if $sub_view == "users_ads"} &rsaquo; <strong>{__("Users Ads")}</strong>{/if}
        {if $sub_view == "edit"} &rsaquo; <strong>{$data['title']}</strong>{/if}
        {if $sub_view == "add"} &rsaquo; <strong>{__("Add New")}</strong>{/if}
    </div>
    {if $sub_view == ""}
        <div class="panel-body">
            <div class="alert alert-info">
                <div class="icon">
                    <i class="fa fa-info-circle fa-2x"></i>
                </div>
                <div class="text pt5">
                    {__("Make sure you have configured")} <a href="{$system['system_url']}/admincp/settings/payments">{__("Payments Settings")}</a>
                </div>
            </div>
            <form class="js_ajax-forms form-horizontal" data-url="admin/ads.php?do=settings">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Ads")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="ads_enabled">
                            <input type="checkbox" name="ads_enabled" id="ads_enabled" {if $system['ads_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                             {__("Allow users to create ads")}
                        </span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        {__("Cost by View")}
                    </label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="ads_cost_view" value="{$system['ads_cost_view']}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        {__("Cost by Click")}
                    </label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="ads_cost_click" value="{$system['ads_cost_click']}">
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
    {elseif $sub_view == "system_ads"}
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID")}</th>
                            <th>{__("Title")}</th>
                            <th>{__("Place")}</th>
                            <th>{__("Date")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                        <tr>
                            <td>{$row['ads_id']}</td>
                            <td>{$row['title']}</td>
                            <td>
                                {if $row['place'] == "home"}<i class='fa fa-home fa-fw mr5'></i>{__("Home  Page")}{/if}
                                {if $row['place'] == "search"}<i class='fa fa-search fa-fw mr5'></i>{__("Search  Page")}{/if}
                                {if $row['place'] == "people"}<i class='fa fa-users fa-fw mr5'></i>{__("Discover People  Page")}{/if}
                                {if $row['place'] == "notifications"}<i class='fa fa-bell fa-fw mr5'></i>{__("Notifications  Page")}{/if}
                                {if $row['place'] == "post"}<i class='fa fa-file-powerpoint fa-fw mr5'></i>{__("Post  Page")}{/if}
                                {if $row['place'] == "photo"}<i class='fa fa-file-image fa-fw mr5'></i>{__("Photo  Page")}{/if}
                                {if $row['place'] == "directory"}<i class='fa fa-th-list fa-fw mr5'></i>{__("Directory  Page")}{/if}
                                {if $row['place'] == "market"}<i class='fa fa-shopping-bag fa-fw mr5'></i>{__("Market  Page")}{/if}
                                {if $row['place'] == "newfeed_1"}<i class='fa fa-newspaper fa-fw mr5'></i>{__("Posts Feed")} 1{/if}
                                {if $row['place'] == "newfeed_2"}<i class='fa fa-newspaper fa-fw mr5'></i>{__("Posts Feed")} 2{/if}
                                {if $row['place'] == "newfeed_3"}<i class='fa fa-newspaper fa-fw mr5'></i>{__("Posts Feed")} 3{/if}
                                {if $row['place'] == "article"}<i class='fa fa-file-alt fa-fw mr5'></i>{__("Article Page")}{/if}
                                {if $row['place'] == "header"}<i class='fa fa-chevron-circle-up fa-fw mr5'></i>{__("Header")}{/if}
                                {if $row['place'] == "footer"}<i class='fa fa-chevron-circle-down fa-fw mr5'></i>{__("Footer")}{/if}
                            </td>
                            <td>{$row['time']|date_format:"%e %B %Y"}</td>
                            <td>
                                <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-xs btn-danger js_admin-deleter" data-handle="ads_system" data-id="{$row['ads_id']}">
                                    <i class="fa fa-trash-alt"></i>
                                </button>
                                <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/ads/edit/{$row['ads_id']}" class="btn btn-xs btn-primary">
                                    <i class="fa fa-pencil-alt"></i>
                                </a>
                            </td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    {elseif $sub_view == "edit"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/ads.php?do=edit&id={$data['ads_id']}">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Title")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="title" value="{$data['title']}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Place")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control selectpicker" name="place">
                            <option {if $data['place'] == "home"}selected{/if} value="home" data-content="<div class='option'><div class='icon'><i class='fa fa-home fa-fw fa-lg'></i></div><div class='text'><b>{__("Home")}</b><br>{__("Appears on the right panel of home page")}.
                            </div></div>">{__("Home")}</option>

                            <option {if $data['place'] == "search"}selected{/if} value="search" data-content="<div class='option'><div class='icon'><i class='fa fa-search fa-fw fa-lg'></i></div><div class='text'><b>{__("Search")}</b><br>{__("Appears on the right panel of search page")}.
                            </div></div>">{__("Search")}</option>

                            <option {if $data['place'] == "people"}selected{/if} value="people" data-content="<div class='option'><div class='icon'><i class='fa fa-users fa-fw fa-lg'></i></div><div class='text'><b>{__("Discover People")}</b><br>{__("Appears on the right panel of discover people page")}.
                            </div></div>">{__("Discover People")}</option>

                            <option {if $data['place'] == "notifications"}selected{/if} value="notifications" data-content="<div class='option'><div class='icon'><i class='fa fa-bell fa-fw fa-lg'></i></div><div class='text'><b>{__("Notifications")}</b><br>{__("Appears on the right panel of notifications page")}.
                            </div></div>">{__("Notifications")}</option>

                            <option {if $data['place'] == "post"}selected{/if} value="post" data-content="<div class='option'><div class='icon'><i class='fa fa-file-powerpoint fa-fw fa-lg'></i></div><div class='text'><b>{__("Post")}</b><br>{__("Appears on the right panel of post page")}.
                            </div></div>">{__("Post")}</option>

                            <option {if $data['place'] == "photo"}selected{/if} value="photo" data-content="<div class='option'><div class='icon'><i class='fa fa-file-image fa-fw fa-lg'></i></div><div class='text'><b>{__("Photo")}</b><br>{__("Appears on the right panel of photo page")}.
                            </div></div>">{__("Photo")}</option>

                            <option {if $data['place'] == "directory"}selected{/if} value="directory" data-content="<div class='option'><div class='icon'><i class='fa fa-th-list fa-fw fa-lg'></i></div><div class='text'><b>{__("Directory")}</b><br>{__("Appears on the right panel of directory")}.
                            </div></div>">{__("Directory")}</option>

                            <option {if $data['place'] == "market"}selected{/if} value="market" data-content="<div class='option'><div class='icon'><i class='fa fa-shopping-bag fa-fw fa-lg'></i></div><div class='text'><b>{__("Market")}</b><br>{__("Appears on the top of products list")}.
                            </div></div>">{__("Market")}</option>

                            <option {if $data['place'] == "newfeed_1"}selected{/if} value="newfeed_1" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 1</b><br>{__("Appears after")} {$system['max_results']} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 1</option>

                            <option {if $data['place'] == "newfeed_2"}selected{/if} value="newfeed_2" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 2</b><br>{__("Appears after")} {$system['max_results']*2} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 2</option>

                            <option {if $data['place'] == "newfeed_3"}selected{/if} value="newfeed_3" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 3</b><br>{__("Appears after")} {$system['max_results']*3} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 3</option>

                            <option {if $data['place'] == "article"}selected{/if} value="article" data-content="<div class='option'><div class='icon'><i class='fa fa-file-alt fa-fw fa-lg'></i></div><div class='text'><b>{__("Article Page")}</b><br>{__("Appears on the sidebar on article page")}.
                            </div></div>">{__("Article Page")}</option>

                            <option {if $data['place'] == "header"}selected{/if} value="header" data-content="<div class='option'><div class='icon'><i class='fa fa-chevron-circle-up fa-fw fa-lg'></i></div><div class='text'><b>{__("Header")}</b><br>{__("Appears on all pages right after the header")}.
                            </div></div>">{__("Header")}</option>

                            <option {if $data['place'] == "footer"}selected{/if} value="footer" data-content="<div class='option'><div class='icon'><i class='fa fa-chevron-circle-down fa-fw fa-lg'></i></div><div class='text'><b>{__("Footer")}</b><br>{__("Appears on all pages right before the footer")}.
                            </div></div>">{__("Footer")}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("HTML")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="message" rows="8">{$data['code']}</textarea>
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
    {elseif $sub_view == "add"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/ads.php?do=add">
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Title")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="title">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Place")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control selectpicker" name="place">
                            <option value="home" data-content="<div class='option'><div class='icon'><i class='fa fa-home fa-fw fa-lg'></i></div><div class='text'><b>{__("Home")}</b><br>{__("Appears on the right panel of home page")}.
                            </div></div>">{__("Home")}</option>

                            <option value="search" data-content="<div class='option'><div class='icon'><i class='fa fa-search fa-fw fa-lg'></i></div><div class='text'><b>{__("Search")}</b><br>{__("Appears on the right panel of search page")}.
                            </div></div>">{__("Search")}</option>

                            <option value="people" data-content="<div class='option'><div class='icon'><i class='fa fa-users fa-fw fa-lg'></i></div><div class='text'><b>{__("Discover People")}</b><br>{__("Appears on the right panel of discover people page")}.
                            </div></div>">{__("Discover People")}</option>

                            <option value="notifications" data-content="<div class='option'><div class='icon'><i class='fa fa-bell fa-fw fa-lg'></i></div><div class='text'><b>{__("Notifications")}</b><br>{__("Appears on the right panel of notifications page")}.
                            </div></div>">{__("Notifications")}</option>

                            <option value="post" data-content="<div class='option'><div class='icon'><i class='fa fa-file-powerpoint fa-fw fa-lg'></i></div><div class='text'><b>{__("Post")}</b><br>{__("Appears on the right panel of post page")}.
                            </div></div>">{__("Post")}</option>

                            <option value="photo" data-content="<div class='option'><div class='icon'><i class='fa fa-file-image fa-fw fa-lg'></i></div><div class='text'><b>{__("Photo")}</b><br>{__("Appears on the right panel of photo page")}.
                            </div></div>">{__("Photo")}</option>

                            <option value="directory" data-content="<div class='option'><div class='icon'><i class='fa fa-th-list fa-fw fa-lg'></i></div><div class='text'><b>{__("Directory")}</b><br>{__("Appears on the right panel of directory")}.
                            </div></div>">{__("Directory")}</option>

                            <option value="market" data-content="<div class='option'><div class='icon'><i class='fa fa-shopping-bag fa-fw fa-lg'></i></div><div class='text'><b>{__("Market")}</b><br>{__("Appears on the top of products list")}.
                            </div></div>">{__("Market")}</option>

                            <option value="newfeed_1" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 1</b><br>{__("Appears after")} {$system['max_results']} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 1</option>

                            <option value="newfeed_2" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 2</b><br>{__("Appears after")} {$system['max_results']*2} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 2</option>

                            <option value="newfeed_3" data-content="<div class='option'><div class='icon'><i class='fa fa-newspaper fa-fw fa-lg'></i></div><div class='text'><b>{__("Posts Feed")} 3</b><br>{__("Appears after")} {$system['max_results']*3} {__("posts are loaded, between the posts")}.
                            </div></div>">{__("Posts Feed")} 3</option>

                            <option value="article" data-content="<div class='option'><div class='icon'><i class='fa fa-file-alt fa-fw fa-lg'></i></div><div class='text'><b>{__("Article Page")}</b><br>{__("Appears on the sidebar on article page")}.
                            </div></div>">{__("Article Page")}</option>

                            <option value="header" data-content="<div class='option'><div class='icon'><i class='fa fa-chevron-circle-up fa-fw fa-lg'></i></div><div class='text'><b>{__("Header")}</b><br>{__("Appears on all pages right after the header")}.
                            </div></div>">{__("Header")}</option>

                            <option value="footer" data-content="<div class='option'><div class='icon'><i class='fa fa-chevron-circle-down fa-fw fa-lg'></i></div><div class='text'><b>{__("Footer")}</b><br>{__("Appears on all pages right before the footer")}.
                            </div></div>">{__("Footer")}</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("HTML")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="message" rows="8"></textarea>
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
    {elseif $sub_view == "users_ads"}
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID")}</th>
                            <th>{__("Title")}</th>
                            <th>{__("By")}</th>
                            <th>{__("Budget")}</th>
                            <th>{__("Spend")}</th>
                            <th>{__("Clicks/Views")}</th>
                            <th>{__("Status")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            <tr>
                                <td>{$row['campaign_id']}</td>
                                <td>{$row['campaign_title']}</td>
                                <td>
                                    <a target="_blank" href="{$system['system_url']}/{$row['user_name']}">
                                        <img class="tbl-image" src="{$row['user_picture']}">
                                        {$row['user_firstname']} {$row['user_lastname']}
                                    </a>
                                </td>
                                
                                <td>{$system['system_currency_symbol']}{$row['campaign_budget']|number_format:2}</td>
                                <td>{$system['system_currency_symbol']}{$row['campaign_spend']|number_format:2}</td>
                                <td>
                                    {if $row['campaign_bidding'] == "click"}
                                        {$row['campaign_clicks']} {__("Clicks")}
                                    {else}
                                        {$row['campaign_views']} {__("Views")}
                                    {/if}
                                </td>
                                <td>
                                    {if $row['campaign_is_active']}
                                        <span class="label label-success">{__("Active")}</span>
                                    {else}
                                        <span class="label label-danger">{__("Not Active")}</span>
                                    {/if}
                                </td>
                                <td>
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-xs btn-danger js_ads-delete-campaign" data-id="{$row['campaign_id']}">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                    <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/ads/edit/{$row['campaign_id']}" class="btn btn-xs btn-primary">
                                        <i class="fa fa-pencil-alt"></i>
                                    </a>
                                    {if $row['campaign_is_active']}
                                        <button data-toggle="tooltip" data-placement="top" title='{__("Stop")}' class="btn btn-xs btn-warning js_ads-stop-campaign" data-id="{$row['campaign_id']}">
                                            <i class="fas fa-stop-circle"></i>
                                        </button>
                                    {else}
                                        <button data-toggle="tooltip" data-placement="top" title='{__("Resume")}' class="btn btn-xs btn-success js_ads-resume-campaign" data-id="{$row['campaign_id']}">
                                            <i class="fas fa-play-circle"></i>
                                        </button>
                                    {/if}
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    {/if}
</div>