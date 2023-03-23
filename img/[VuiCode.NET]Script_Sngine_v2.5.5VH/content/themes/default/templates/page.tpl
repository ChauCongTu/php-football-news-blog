{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container {if $user->_logged_in}offcanvas{/if}">
    <div class="row">

        <!-- side panel -->
        {if $user->_logged_in}
            <div class="col-xs-12 visible-xs-block offcanvas-sidebar mt20">
                {include file='_sidebar.tpl'}
            </div>
        {/if}
        <!-- side panel -->

        <!-- content panel -->
        <div class="col-xs-12 {if $user->_logged_in}offcanvas-mainbar{/if}">
            <!-- profile-header -->
            <div class="profile-header">
                <!-- profile-cover -->
                <div class="profile-cover-wrapper">
                    {if $spage['page_cover_id']}
                        <img class="js_lightbox" style="top: {$spage['page_cover_position']}" data-init-position="{$spage['page_cover_position']}" data-id="{$spage['page_cover_id']}" data-image="{$system['system_uploads']}/{$spage['page_cover']}" data-context="album" src="{$system['system_uploads']}/{$spage['page_cover']}" alt="{$spage['page_title']}">
                    {/if}
                    
                    <!-- buttons -->
                    {if $spage['i_admin']}
                        <div class="profile-cover-change">
                            <i class="fa fa-camera js_x-uploader" data-handle="cover-page" data-id="{$spage['page_id']}"></i>
                        </div>
                        <div class="profile-cover-change-loader">
                            <div class="loader loader_large"></div>
                        </div>
                        <div class="profile-cover-position {if !$spage['page_cover']}x-hidden{/if}">
                            <input class="js_position-picture-val" type="hidden" name="position-picture-val">
                            <i class="fa fa-crop-alt js_init-position-picture" data-handle="page" data-id="{$spage['page_id']}"></i>
                        </div>
                        <div class="profile-cover-position-loader">
                            <i class="fa fa-arrows-alt mr5"></i>{__("Drag to reposition cover")}
                        </div>
                        <div class="profile-cover-position-buttons">
                            <button class="btn btn-primary btn-sm js_save-position-picture">{__("Save")}</button>
                            <button class="btn btn-default btn-sm js_cancel-position-picture">{__("Cancel")}</button>
                        </div>
                        <div class="profile-cover-delete {if !$spage['page_cover']}x-hidden{/if}">
                            <i class="fa fa-trash js_delete-cover" data-handle="cover-page" data-id="{$spage['page_id']}"></i>
                        </div>
                    {/if}
                    <!-- buttons -->
                </div>
                <!-- profile-cover -->

                <!-- profile-avatar -->
                <div class="profile-avatar-wrapper">
                    <img {if !$spage['page_picture_default']} class="js_lightbox" data-id="{$spage['page_picture_id']}" data-image="{$spage['page_picture_full']}" data-context="album" {/if} src="{$spage['page_picture']}" alt="{$spage['page_title']}">

                    <!-- buttons -->
                    {if $spage['i_admin']}
                        <div class="profile-avatar-change">
                            <i class="fa fa-camera js_x-uploader" data-handle="picture-page" data-id="{$spage['page_id']}"></i>
                        </div>
                        <div class="profile-avatar-change-loader">
                            <div class="loader loader_medium"></div>
                        </div>
                        <div class="profile-avatar-crop {if $spage['page_picture_default']}x-hidden{/if}">
                            <i class="fa fa-crop-alt js_init-crop-picture" data-image="{$spage['page_picture_full']}" data-handle="page" data-id="{$spage['page_id']}"></i>
                        </div>
                        <div class="profile-avatar-delete {if $spage['page_picture_default']}x-hidden{/if}">
                            <i class="fa fa-trash js_delete-picture" data-handle="picture-page" data-id="{$spage['page_id']}"></i>
                        </div>
                    {/if}
                    <!-- buttons -->
                </div>
                <!-- profile-avatar -->

                <!-- profile-name -->
                <div class="profile-name-wrapper">
                    <a href="{$system['system_url']}/pages/{$spage['page_name']}">{$spage['page_title']}</a>
                    {if $spage['page_verified']}
                        <i data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}' class="fa fa-check-circle fa-fw verified-badge"></i>
                    {/if}
                </div>
                <!-- profile-name -->

                <!-- profile-buttons -->
                <div class="profile-buttons-wrapper">
                    {if $spage['i_like']}
                        <button type="button" class="btn btn-default js_unlike-page" data-id="{$spage['page_id']}">
                            <i class="fa fa-thumbs-up"></i>
                            {__("Unlike")}
                        </button>
                    {else}
                        <button type="button" class="btn btn-primary js_like-page" data-id="{$spage['page_id']}">
                            <i class="fa fa-thumbs-up"></i>
                            {__("Like")}
                        </button>
                    {/if}
                    {if $spage['page_action_text'] && $spage['page_action_url']}
                        <a target="_blank" href="{$spage['page_action_url']}" class="btn btn-{$spage['page_action_color']}">{$spage['page_action_text']}</a>
                    {/if}
                    {if $spage['i_admin']}
                        {if $system['packages_enabled']}
                            {if $user->_data['can_boost_pages']}
                                {if $spage['page_boosted']}
                                    <button type="button" class="btn btn-default js_unboost-page" data-id="{$spage['page_id']}">
                                        <i class="fa fa-bolt"></i>
                                        {__("Unboost")}
                                    </button>
                                {else}
                                    <button type="button" class="btn btn-danger js_boost-page" data-id="{$spage['page_id']}">
                                        <i class="fa fa-bolt"></i>
                                        {__("Boost")}
                                    </button>
                                {/if}
                            {else}
                                <a href="{$system['system_url']}/packages" class="btn btn-danger">
                                    <i class="fa fa-bolt"></i>
                                    {__("Boost Page")}
                                </a>
                            {/if}
                        {/if}
                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings" class="btn btn-default">
                            <i class="fa fa-cog"></i> {__("Settings")}
                        </a>
                    {else}
                        <button class="btn btn-default js_report" data-handle="page" data-id="{$spage['page_id']}">
                            <i class="fa fa-flag"></i> {__("Report")}
                        </button>
                    {/if}
                </div>
                <!-- profile-buttons -->

                <!-- profile-tabs -->
                <div class="profile-tabs-wrapper">
                    <ul class="nav">
                        <li>
                            <a href="{$system['system_url']}/pages/{$spage['page_name']}">
                                {__("Timeline")}
                            </a>
                        </li>
                        <li class="middle-tabs">
                            <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">
                                {__("Photos")} 
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                {__("More")}
                                <i class="caret"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="middle-tabs-alt">
                                    <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">{__("Photos")}</a>
                                </li>
                                <li>
                                    <a href="{$system['system_url']}/pages/{$spage['page_name']}/albums">{__("Albums")}</a>
                                </li>
                                {if $spage['i_like']}
                                    <li>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/invites">{__("Invite Friends")}</a>
                                    </li>
                                {/if}
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- profile-tabs -->
            </div>
            <!-- profile-header -->

            <!-- profile-content -->
            <div class="row">
                <!-- profile-buttons alt -->
                <div class="col-sm-12">
                    <div class="panel panel-default profile-buttons-wrapper-alt">
                        <div class="panel-body">
                            {if $spage['i_like']}
                                <button type="button" class="btn btn-default js_unlike-page" data-id="{$spage['page_id']}">
                                    <i class="fa fa-thumbs-up"></i>
                                    {__("Unlike")}
                                </button>
                            {else}
                                <button type="button" class="btn btn-primary js_like-page" data-id="{$spage['page_id']}">
                                    <i class="fa fa-thumbs-up"></i>
                                    {__("Like")}
                                </button>
                            {/if}
                            {if $spage['page_action_text'] && $spage['page_action_url']}
                                <a target="_blank" href="{$spage['page_action_url']}" class="btn btn-{$spage['page_action_color']}">{$spage['page_action_text']}</a>
                            {/if}
                            {if $spage['i_admin']}
                                {if $user->_data['can_boost_pages']}
                                    {if $spage['page_boosted']}
                                        <button type="button" class="btn btn-default js_unboost-page" data-id="{$spage['page_id']}">
                                            <i class="fa fa-bolt"></i>
                                            {__("Unboost")}
                                        </button>
                                    {else}
                                        <button type="button" class="btn btn-danger js_boost-page" data-id="{$spage['page_id']}">
                                            <i class="fa fa-bolt"></i>
                                            {__("Boost")}
                                        </button>
                                    {/if}
                                {else}
                                    <a href="{$system['system_url']}/packages" class="btn btn-danger">
                                        <i class="fa fa-bolt"></i>
                                        {__("Boost Page")}
                                    </a>
                                {/if}
                                <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings" class="btn btn-default">
                                    <i class="fa fa-cog"></i> {__("Settings")}
                                </a>
                            {else}
                                <button class="btn btn-default js_report" data-handle="page" data-id="{$spage['page_id']}">
                                    <i class="fa fa-flag"></i> {__("Report")}
                                </button>
                            {/if}
                        </div>
                    </div>
                </div>
                <!-- profile-buttons alt -->

                <!-- view content -->
                {if $view == ""}
                    <!-- right panel -->
                    <div class="col-sm-4">
                        <!-- about -->
                        <div class="panel panel-default">
                            <div class="panel-body">
                                {if !is_empty($spage['page_description'])}
                                    <div class="about-bio">
                                        {$spage['page_description']}
                                    </div>
                                {/if}
                                <ul class="about-list">
                                    <!-- likes -->
                                    <li>
                                        <div class="about-list-item">
                                            <i class="fa fa-thumbs-up fa-fw fa-lg"></i>
                                            {$spage['page_likes']} {__("people like this")}
                                        </div>
                                    </li>
                                    <!-- likes -->
                                    <!-- category -->
                                    <li>
                                        <div class="about-list-item">
                                            <i class="fa fa-tag fa-fw fa-lg"></i>
                                            {__($spage['page_category_name'])}
                                        </div>
                                    </li>
                                    <!-- category -->
                                    <!-- info -->
                                    {if $spage['page_company']}
                                        <li>
                                            <div class="about-list-item">
                                                <i class="fa fa-briefcase fa-fw fa-lg"></i>
                                                {$spage['page_company']}
                                            </div>
                                        </li>
                                    {/if}
                                    {if $spage['page_phone']}
                                        <li>
                                            <div class="about-list-item">
                                                <i class="fa fa-phone fa-fw fa-lg"></i>
                                                {$spage['page_phone']}
                                            </div>
                                        </li>
                                    {/if}
                                    {if $spage['page_website']}
                                        <li>
                                            <div class="about-list-item">
                                                <i class="fa fa-link fa-fw fa-lg"></i>
                                                <a target="_blank" href="{$spage['page_website']}">{$spage['page_website']}</a>
                                            </div>
                                        </li>
                                    {/if}
                                    {if $spage['page_location']}
                                        <li>
                                            <div class="about-list-item">
                                                <i class="fa fa-map-marker fa-fw fa-lg"></i>
                                                {$spage['page_location']}
                                            </div>
                                        </li>
                                        <div style="margin-left: -15px; margin-right: -15px;">
                                            <iframe width="100%" frameborder="0" style="border:0;" src="https://www.google.com/maps/embed/v1/place?key={$system['geolocation_key']}&amp;q={$spage['page_location']}&amp;language=en"></iframe>
                                        </div>
                                    {/if}
                                    <!-- info -->
                                </ul>
                            </div>
                        </div>
                        <!-- about -->

                        <!-- custom fields -->
                        {if $custom_fields['basic']}
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-info-circle fa-fw text-info"></i> {__("Info")}
                                </div>
                                <div class="panel-body">
                                    <ul class="about-list">
                                        {foreach $custom_fields['basic'] as $custom_field}
                                            {if $custom_field['value']}
                                                <li>
                                                    <strong>{$custom_field['label']}</strong><br>
                                                    {$custom_field['value']}
                                                </li>
                                            {/if}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                        <!-- custom fields -->

                        <!-- social links -->
                        {if $spage['page_social_facebook'] || $spage['page_social_twitter'] || $spage['page_social_google'] || $spage['page_social_youtube'] || $spage['page_social_instagram'] || $spage['page_social_linkedin'] || $spage['page_social_vkontakte']}
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-share-alt fa-fw text-info"></i> {__("Social Links")}
                                </div>
                                <div class="panel-body text-center">
                                    {if $spage['page_social_facebook']}
                                        <a target="_blank" href="{$spage['page_social_facebook']}" class="btn btn-social-icon btn-facebook">
                                            <i class="fab fa-facebook"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_twitter']}
                                        <a target="_blank" href="{$spage['page_social_twitter']}" class="btn btn-social-icon btn-twitter">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_google']}
                                        <a target="_blank" href="{$spage['page_social_google']}" class="btn btn-social-icon btn-google">
                                            <i class="fab fa-google"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_youtube']}
                                        <a target="_blank" href="{$spage['page_social_youtube']}" class="btn btn-social-icon btn-pinterest">
                                            <i class="fab fa-youtube"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_instagram']}
                                        <a target="_blank" href="{$spage['page_social_instagram']}" class="btn btn-social-icon btn-instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_linkedin']}
                                        <a target="_blank" href="{$spage['page_social_linkedin']}" class="btn btn-social-icon btn-linkedin">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                    {/if}
                                    {if $spage['page_social_vkontakte']}
                                        <a target="_blank" href="{$spage['page_social_vkontakte']}" class="btn btn-social-icon btn-vk">
                                            <i class="fab fa-vk"></i>
                                        </a>
                                    {/if}
                                </div>
                            </div>
                        {/if}
                        <!-- social links -->

                        <!-- invite friends -->
                        {if $spage['i_like'] && $spage['invites']}
                            <div class="panel panel-default">
                                <div class="panel-heading light no_border">
                                    <div class="pull-right flip">
                                        <small><a href="{$system['system_url']}/pages/{$spage['page_name']}/invites">{__("See All")}</a></small>
                                    </div>
                                    <strong class="text-muted">{__("Invite Friends")}</strong>
                                </div>
                                <div class="panel-body ptb5 plr5">
                                    <ul>
                                        {foreach $spage['invites'] as $_user}
                                        {include file='__feeds_user.tpl' _connection=$_user["connection"] _small=true}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                        <!-- invite friends -->

                        <!-- photos -->
                        {if count($spage['photos']) > 0}
                            <div class="panel panel-default panel-photos">
                                <div class="panel-heading">
                                    <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">{__("Photos")}</a>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        {foreach $spage['photos'] as $photo}
                                            {include file='__feeds_photo.tpl' _context="photos" _small=true}
                                        {/foreach}
                                    </div>
                                </div>
                            </div>
                        {/if}
                        <!-- photos -->
                    </div>
                    <!-- right panel -->

                    <!-- left panel -->
                    <div class="col-sm-8">
                        <!-- publisher -->
                        {if $spage['i_admin']}
                            {include file='_publisher.tpl' _handle="page" _id=$spage['page_id']}
                        {/if}
                        <!-- publisher -->

                        <!-- pinned post -->
                        {if $pinned_post}
                            {include file='_pinned_post.tpl' post=$pinned_post}
                        {/if}
                        <!-- pinned post -->
                        
                        <!-- posts -->
                        {include file='_posts.tpl' _get="posts_page" _id=$spage['page_id']}
                        <!-- posts -->
                    </div>
                    <!-- left panel -->
                {elseif $view == "photos"}
                    <!-- photos -->
                    <div class="col-xs-12">
                        <div class="panel panel-default panel-photos">
                            <div class="panel-heading with-icon with-nav">
                                <!-- panel title -->
                                <div class="mb20">
                                    <i class="fa fa-file-image pr5 panel-icon"></i>
                                    <strong>{__("Photos")}</strong>
                                </div>
                                <!-- panel title -->

                                <!-- panel nav -->
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">
                                            <strong class="pr5">{__("Photos")}</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/albums">{__("Albums")}</a>
                                    </li>
                                </ul>
                                <!-- panel nav -->
                            </div>
                            <div class="panel-body">
                                {if count($spage['photos']) > 0}
                                    <ul class="row">
                                        {foreach $spage['photos'] as $photo}
                                            {include file='__feeds_photo.tpl' _context="photos"}
                                        {/foreach}
                                    </ul>
                                    {if count($spage['photos']) >= $system['min_results_even']}
                                        <!-- see-more -->
                                        <div class="alert alert-info see-more js_see-more" data-get="photos" data-id="{$spage['page_id']}" data-type='page'>
                                            <span>{__("See More")}</span>
                                            <div class="loader loader_small x-hidden"></div>
                                        </div>
                                        <!-- see-more -->
                                    {/if}
                                {else}
                                    <p class="text-center text-muted mt10">
                                        {$spage['page_title']} {__("doesn't have photos")}
                                    </p>
                                {/if}
                            </div>
                        </div>
                    </div>
                    <!-- photos -->
                {elseif $view == "albums"}
                    <!-- albums -->
                    <div class="col-xs-12">
                        <div class="panel panel-default panel-albums">
                            <div class="panel-heading with-icon with-nav">
                                <!-- panel title -->
                                <div class="mb20">
                                    <i class="fa fa-file-image pr5 panel-icon"></i>
                                    <strong>{__("Photos")}</strong>
                                </div>
                                <!-- panel title -->

                                <!-- panel nav -->
                                <ul class="nav nav-tabs">
                                    <li>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">{__("Photos")}</a>
                                    </li>
                                    <li class="active">
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/albums">
                                            <strong class="pr5">{__("Albums")}</strong>
                                        </a>
                                    </li>
                                </ul>
                                <!-- panel nav -->
                            </div>
                            <div class="panel-body">
                                {if count($spage['albums']) > 0}
                                    <ul class="row">
                                        {foreach $spage['albums'] as $album}
                                        {include file='__feeds_album.tpl'}
                                        {/foreach}
                                    </ul>
                                    {if count($spage['albums']) >= $system['max_results_even']}
                                        <!-- see-more -->
                                        <div class="alert alert-info see-more js_see-more" data-get="albums" data-id="{$spage['page_id']}" data-type='page'>
                                            <span>{__("See More")}</span>
                                            <div class="loader loader_small x-hidden"></div>
                                        </div>
                                        <!-- see-more -->
                                    {/if}
                                {else}
                                    <p class="text-center text-muted mt10">
                                        {$spage['page_title']} {__("doesn't have albums")}
                                    </p>
                                {/if}
                            </div>
                        </div>
                    </div>
                    <!-- albums -->
                {elseif $view == "album"}
                    <!-- albums -->
                    <div class="col-xs-12">
                        <div class="panel panel-default panel-albums">
                            <div class="panel-heading with-icon with-nav">
                                <!-- back to albums -->
                                <div class="pull-right flip">
                                    <a href="{$system['system_url']}/pages/{$spage['page_name']}/albums" class="btn btn-default btn-sm">
                                        <i class="fa fa-arrow-circle-left"></i> {__("Back to Albums")}
                                    </a>
                                </div>
                                <!-- back to albums -->
                                
                                <!-- panel title -->
                                <div class="mb20">
                                    <i class="fa fa-file-image pr5 panel-icon"></i>
                                    <strong>{__("Photos")}</strong>
                                </div>
                                <!-- panel title -->

                                <!-- panel nav -->
                                <ul class="nav nav-tabs">
                                    <li>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/photos">{__("Photos")}</a>
                                    </li>
                                    <li class="active">
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/albums">
                                            <strong class="pr5">{__("Albums")}</strong>
                                        </a>
                                    </li>
                                </ul>
                                <!-- panel nav -->
                            </div>
                            <div class="panel-body">
                            {include file='_album.tpl'}
                            </div>
                        </div>
                    </div>
                    <!-- albums -->
                {elseif $view == "invites"}
                    <!-- invites -->
                    <div class="col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading with-icon with-nav">

                                <!-- panel title -->
                                <div class="mb20">
                                    <i class="fa fa-users pr5 panel-icon"></i>
                                    <strong>{__("Invites")}</strong>
                                </div>
                                <!-- panel title -->

                                <!-- panel nav -->
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/invites">
                                            <strong class="pr5">{__("Invites")}</strong>
                                        </a>
                                    </li>
                                </ul>
                                <!-- panel nav -->
                            </div>
                            <div class="panel-body">
                                {if $spage['invites']}
                                    <ul class="row">
                                        {foreach $spage['invites'] as $_user}
                                        {include file='__feeds_user.tpl' _connection=$_user["connection"] _parent="profile"}
                                        {/foreach}
                                    </ul>

                                    {if $spage['invites'] >= $system['max_results_even']}
                                        <!-- see-more -->
                                        <div class="alert alert-info see-more js_see-more" data-get="page_invites" data-id="{$spage['page_id']}">
                                            <span>{__("See More")}</span>
                                            <div class="loader loader_small x-hidden"></div>
                                        </div>
                                        <!-- see-more -->
                                    {/if}
                                {else}
                                    <p class="text-center text-muted mt10">
                                        {__("No friends to invite")}
                                    </p>
                                {/if}
                            </div>
                        </div>
                    </div>
                    <!-- invites -->
                {elseif $view == "settings"}
                    <div class="col-md-3 col-sm-3">
                        <div class="panel panel-default">
                            <div class="panel-body with-nav">
                                <ul class="side-nav">
                                    <li {if $sub_view == ""}class="active"{/if}>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings"><i class="fa fa-cog fa-fw fa-lg pr10"></i> {__("Page Settings")}</a>
                                    </li>
                                    <li {if $sub_view == "info"}class="active"{/if}>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings/info"><i class="fa fa-flag fa-fw fa-lg pr10"></i> {__("Page Information")}</a>
                                    </li>
                                    <li {if $sub_view == "admins"}class="active"{/if}>
                                        <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings/admins"><i class="fa fa-users fa-fw fa-lg pr10"></i> {__("Admins")}</a>
                                    </li>
                                    {if $system['verification_requests']}
                                        <li {if $sub_view == "verification"}class="active"{/if}>
                                            <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings/verification"><i class="fa fa-check-circle fa-fw fa-lg pr10"></i> {__("Verification")}</a>
                                        </li>
                                    {/if}
                                    {if $user->_data['user_id'] == $spage['page_admin']}
                                        <li {if $sub_view == "delete"}class="active"{/if}>
                                            <a href="{$system['system_url']}/pages/{$spage['page_name']}/settings/delete"><i class="fa fa-trash fa-fw fa-lg pr10"></i> {__("Delete Page")}</a>
                                        </li>
                                    {/if}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-9">
                        <div class="panel panel-default">
                            {if $sub_view == ""}
                                <div class="panel-heading with-icon">
                                    <!-- panel title -->
                                    <i class="fa fa-cog pr5 panel-icon"></i>
                                    <strong>{__("Page Settings")}</strong>
                                    <!-- panel title -->
                                </div>
                                <div class="panel-body">
                                    <form class="js_ajax-forms form-horizontal" data-url="pages_groups_events/create.php?type=page&do=edit&edit=settings&id={$spage['page_id']}">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="title">
                                                {__("Name Your Page")}
                                            </label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" name="title" id="title" value="{$spage['page_title']}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="username">
                                                {__("Web Address")}
                                            </label>
                                            <div class="col-sm-9">
                                                <div class="input-group">
                                                    <span class="input-group-addon">{$system['system_url']}/pages/</span>
                                                    <input type="text" class="form-control" name="username" id="username" value="{$spage['page_name']}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="category">
                                                {__("Category")}
                                            </label>
                                            <div class="col-sm-9">
                                                <select class="form-control" name="category" id="category">
                                                    {foreach $categories as $category}
                                                        <option {if $spage['page_category'] == $category['category_id']}selected{/if} value="{$category['category_id']}">{__($category['category_name'])}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                                            </div>
                                        </div>

                                        <!-- error -->
                                        <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                                        <!-- error -->
                                    </form>
                                </div>
                            {elseif $sub_view == "info"}
                                <div class="panel-heading with-icon with-nav">
                                    <!-- panel title -->
                                    <div class="mb20">
                                        <i class="fa fa-flag pr5 panel-icon"></i>
                                        <strong>{__("Page Information")}</strong>
                                    </div>
                                    <!-- panel title -->

                                    <!-- panel nav -->
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#basic" data-toggle="tab">
                                                <i class="fa fa-flag fa-fw mr5"></i><strong class="pr5">{__("Basic")}</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#action" data-toggle="tab">
                                                <i class="fa fa-magic fa-fw mr5"></i><strong class="pr5">{__("Action Button")}</strong>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#social" data-toggle="tab">
                                                <i class="fab fa-facebook fa-fw mr5"></i><strong class="pr5">{__("Social Links")}</strong>
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- panel nav -->
                                </div>

                                <div class="panel-body tab-content">
                                    <!-- basic tab -->
                                    <div class="tab-pane active" id="basic">
                                        <form class="js_ajax-forms form-horizontal" data-url="pages_groups_events/create.php?type=page&do=edit&edit=info&id={$spage['page_id']}">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="company">
                                                    {__("Company")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="company" id="company" value="{$spage['page_company']}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="phone">
                                                    {__("Phone")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="phone" id="phone" value="{$spage['page_phone']}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="website">
                                                    {__("Website")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="website" id="website" value="{$spage['page_website']}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="location">
                                                    {__("Location")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control js_geocomplete" name="location" id="location" value="{$spage['page_location']}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="description">
                                                    {__("About")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <textarea class="form-control" name="description" id="description">{$spage['page_description']}</textarea>
                                                </div>
                                            </div>
                                            <!-- custom fields -->
                                            {if $custom_fields['basic']}
                                            {include file='__custom_fields.tpl' _custom_fields=$custom_fields['basic'] _registration=false}
                                            {/if}
                                            <!-- custom fields -->
                                            <div class="form-group">
                                                <div class="col-sm-9 col-sm-offset-3">
                                                    <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                                                </div>
                                            </div>

                                            <!-- error -->
                                            <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                                            <!-- error -->
                                        </form>
                                    </div>
                                    <!-- basic tab -->

                                    <!-- action tab -->
                                    <div class="tab-pane" id="action">
                                        <form class="js_ajax-forms form-horizontal" data-url="pages_groups_events/create.php?type=page&do=edit&edit=action&id={$spage['page_id']}">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="description">
                                                    {__("Action Button Text")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="action_text" id="action_text" value="{$spage['page_action_text']}">
                                                    <span class="help-block">
                                                        {__("For example: Subscribe, Get tickets, Preorder now or Shop now")}
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label text-left">
                                                    {__("Action Button Color")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <div>
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_default" value="default" {if $spage['page_action_color'] == "default"}checked{/if}>
                                                            <label for="action_color_default">
                                                                <a class="btn btn-sm btn-default">Action</a>
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_primary" value="primary" {if $spage['page_action_color'] == "primary"}checked{/if}>
                                                            <label for="action_color_primary">
                                                                <a class="btn btn-sm btn-primary">Action</a>
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_success" value="success" {if $spage['page_action_color'] == "success"}checked{/if}>
                                                            <label for="action_color_success">
                                                                <a class="btn btn-sm btn-success">Action</a>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="mt10 mb10">
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_info" value="info" {if $spage['page_action_color'] == "info"}checked{/if}>
                                                            <label for="action_color_info">
                                                                <a class="btn btn-sm btn-info">Action</a>
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_warning" value="warning" {if $spage['page_action_color'] == "warning"}checked{/if}>
                                                            <label for="action_color_warning">
                                                                <a class="btn btn-sm btn-warning">Action</a>
                                                            </label>
                                                        </div>
                                                        <div class="radio radio-primary radio-inline">
                                                            <input type="radio" name="action_color" id="action_color_danger" value="danger" {if $spage['page_action_color'] == "danger"}checked{/if}>
                                                            <label for="action_color_danger">
                                                                <a class="btn btn-sm btn-danger">Action</a>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label" for="description">
                                                    {__("Action Button URL")}
                                                </label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" name="action_url" id="action_url" value="{$spage['page_action_url']}">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-sm-9 col-sm-offset-3">
                                                    <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                                                </div>
                                            </div>

                                            <!-- error -->
                                            <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                                            <!-- error -->
                                        </form>
                                    </div>
                                    <!-- action tab -->

                                    <!-- social tab -->
                                    <div class="tab-pane" id="social">
                                        <form class="js_ajax-forms form-horizontal" data-url="pages_groups_events/create.php?type=page&do=edit&edit=social&id={$spage['page_id']}">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-facebook-square fa-2x" style="color: #3B579D"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="facebook" value="{$spage['page_social_facebook']}" placeholder="{__("Facebook Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-twitter-square fa-2x" style="color: #55ACEE"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="twitter" value="{$spage['page_social_twitter']}" placeholder="{__("Twitter Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-google-plus-square fa-2x" style="color: #DC4A38"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="google" value="{$spage['page_social_google']}" placeholder="{__("Google+ Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-youtube fa-2x" style="color: #E62117"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="youtube" value="{$spage['page_social_youtube']}" placeholder="{__("YouTube Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-instagram fa-2x" style="color: #3f729b"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="instagram" value="{$spage['page_social_instagram']}" placeholder="{__("Instagram Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-linkedin fa-2x" style="color: #1A84BC"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="linkedin" value="{$spage['page_social_linkedin']}" placeholder="{__("LinkedIn Profile URL")}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">
                                                    <i class="fab fa-vk fa-2x" style="color: #527498"></i>
                                                </label>
                                                <div class="col-sm-9 mt5">
                                                    <input type="text" class="form-control" name="vkontakte" value="{$spage['page_social_vkontakte']}" placeholder="{__("Vkontakte Profile URL")}">
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
                                    <!-- social tab -->
                                </div>
                            {elseif $sub_view == "admins"}
                                <div class="panel-heading with-icon">
                                    <!-- panel title -->
                                    <i class="fa fa-users pr5 panel-icon"></i>
                                    <strong>{__("Members")}</strong>
                                    <!-- panel title -->
                                </div>
                                <div class="panel-body">
                                    <!-- admins -->
                                    <div>
                                        <div class="panel-title">{__("Admins")} <span class="text-x-muted">({$spage['page_admins_count']})</span></div>
                                        {if $spage['page_admins']}
                                            <ul class="row">
                                                {foreach $spage['page_admins'] as $_user}
                                                {include file='__feeds_user.tpl' _connection=$_user["connection"]}
                                                {/foreach}
                                            </ul>

                                            {if count($spage['page_admins_count']) >= $system['max_results_even']}
                                                <!-- see-more -->
                                                <div class="alert alert-info see-more js_see-more" data-get="page_admins" data-id="{$spage['page_id']}">
                                                    <span>{__("See More")}</span>
                                                    <div class="loader loader_small x-hidden"></div>
                                                </div>
                                                <!-- see-more -->
                                            {/if}
                                        {else}
                                            <p class="text-center text-muted mt10">
                                                {$spage['page_title']} {__("doesn't have admins")}
                                            </p>
                                        {/if}
                                    </div>
                                    <!-- admins -->

                                    <!-- members -->
                                    <div class="mt20">
                                        <div class="panel-title">{__("All Members")} <span class="text-x-muted">({$spage['page_likes']})</span></div>
                                        {if $spage['page_likes'] > 0}
                                            <ul class="row">
                                                {foreach $spage['members'] as $_user}
                                                {include file='__feeds_user.tpl' _connection=$_user["connection"]}
                                                {/foreach}
                                            </ul>

                                            {if $spage['page_likes'] >= $system['max_results_even']}
                                                <!-- see-more -->
                                                <div class="alert alert-info see-more js_see-more" data-get="page_members" data-id="{$spage['page_id']}">
                                                    <span>{__("See More")}</span>
                                                    <div class="loader loader_small x-hidden"></div>
                                                </div>
                                                <!-- see-more -->
                                            {/if}
                                        {else}
                                            <p class="text-center text-muted mt10">
                                                {$spage['page_title']} {__("doesn't have members")}
                                            </p>
                                        {/if}
                                    </div>
                                    <!-- members -->
                                </div>
                            {elseif $sub_view == "verification"}
                                <div class="panel-heading with-icon">
                                    <!-- panel title -->
                                    <i class="fa fa-check-circle pr5 panel-icon"></i>
                                    <strong>{__("Verification")}</strong>
                                    <!-- panel title -->
                                </div>
                                <div class="panel-body">
                                    {if $case == "verified"}
                                        <div class="text-center">
                                            <div class="big-icon success">
                                                <i class="fa fa-thumbs-up fa-3x"></i>
                                            </div>
                                            <h4>{__("Congratulations")}</h4>
                                            <p class="mt20">{__("This page is verified")}</p>
                                        </div>
                                    {elseif $case == "request"}
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle fa-lg mr10"></i>{__("You can send verification request to verify your page")}<br>
                                        </div>
                                        <div class="text-center">
                                            <button class="btn btn-success js_verify" data-id="{$spage['page_id']}">
                                                <i class="fa fa-check-circle mr5"></i>{__("Verification Request")}
                                            </button>
                                        </div>
                                    {elseif $case == "pending"}
                                        <div class="alert alert-info">
                                            <i class="fa fa-info-circle fa-lg mr10"></i>{__("Your verification request is still awaiting admin approval")}<br>
                                        </div>
                                        <div class="text-center">
                                            <button class="btn btn-warning btn-delete js_unverify" data-id="{$spage['page_id']}"><i class="fa fa-clock mr5"></i>{__("Pending")}</button>
                                        </div>
                                    {elseif $case == "declined"}
                                        <div class="text-center">
                                            <div class="big-icon error">
                                                <i class="fa fa-meh-o fa-3x"></i>
                                            </div>
                                            <h4>{__("Sorry")}</h4>
                                            <p class="mt20">{__("Your verification request has been declined by the admin")}</p>
                                        </div>
                                    {/if}
                                </div>
                            {elseif $sub_view == "delete"}
                                <div class="panel-heading with-icon">
                                    <!-- panel title -->
                                    <i class="fa fa-trash pr5 panel-icon"></i>
                                    <strong>{__("Delete Page")}</strong>
                                    <!-- panel title -->
                                </div>
                                <div class="panel-body">
                                    <div class="alert alert-warning">
                                        <i class="fa fa-exclamation-triangle fa-lg mr10"></i>{__("Once you delete your page you will no longer can access it again")}
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-danger js_delete-page" data-id="{$spage['page_id']}">
                                            <i class="fa fa-trash mr5"></i>{__("Delete Page")}
                                        </button>
                                    </div>
                                </div>
                            {/if}
                        </div>
                    </div>
                {/if}
                <!-- view content -->
            </div>
            <!-- profile-content -->
        </div>
        <!-- content panel -->
    
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}