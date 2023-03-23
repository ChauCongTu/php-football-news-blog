<div class="panel panel-default">
    <div class="panel-heading with-icon">
        {if $sub_view == ""}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/custom_fields/add" class="btn btn-primary">
                    <i class="fa fa-plus"></i> {__("Add New Field")}
                </a>
            </div>
        {else}
            <div class="pull-right flip">
                <a href="{$system['system_url']}/admincp/custom_fields" class="btn btn-default">
                    <i class="fa fa-arrow-circle-left"></i> {__("Go Back")}
                </a>
            </div>
        {/if}
        <i class="fa fa-bars pr5 panel-icon"></i>
        <strong>{__("Custom Fields")}</strong>
        {if $sub_view == "add"} &rsaquo; <strong>{__("Add New")}</strong>{/if}
    </div>
    {if $sub_view == ""}
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID")}</th>
                            <th>{__("Label")}</th>
                            <th>{__("For")}</th>
                            <th>{__("Type")}</th>
                            <th>{__("Place")}</th>
                            <th>{__("Order")}</th>
                            <th>{__("Mandatory")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                        <tr>
                            <td>{$row['field_id']}</td>
                            <td>{$row['label']}</td>
                            <td>
                                {if $row['field_for'] == "user"}<i class="fa fa-user fa-fw mr5"></i>{__("User")}{/if}
                                {if $row['field_for'] == "page"}<i class="fa fa-flag fa-fw mr5"></i>{__("Page")}{/if}
                                {if $row['field_for'] == "group"}<i class="fa fa-users fa-fw mr5"></i>{__("Group")}{/if}
                                {if $row['field_for'] == "event"}<i class="fa fa-calendar fa-fw mr5"></i>{__("Event")}{/if}
                            </td>
                            <td>
                                {if $row['type'] == "textbox"}{__("Textbox")}{/if}
                                {if $row['type'] == "textarea"}{__("Textarea")}{/if}
                                {if $row['type'] == "selectbox"}{__("Select Box")}{/if}
                            </td>
                            <td>
                                {if $row['place'] == "basic"}{__("Basic Info")}{/if}
                                {if $row['place'] == "work"}{__("Work Info")}{/if}
                                {if $row['place'] == "location"}{__("Location Info")}{/if}
                                {if $row['place'] == "education"}{__("Education Info")}{/if}
                                {if $row['place'] == "other"}{__("Other Info")}{/if}
                            </td>
                            <td>{$row['field_order']}</td>
                            <td>
                                {if $row['mandatory']}
                                    <span class="label label-success">{__("Yes")}</span>
                                {else}
                                    <span class="label label-danger">{__("No")}</span>
                                {/if}
                            </td>
                            <td>
                                <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-xs btn-danger js_admin-deleter" data-handle="custom_field" data-id="{$row['field_id']}">
                                    <i class="fa fa-trash-alt"></i>
                                </button>
                                <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/custom_fields/edit/{$row['field_id']}" class="btn btn-xs btn-primary">
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
            <form class="js_ajax-forms form-horizontal" data-url="admin/custom_fields.php?do=edit&id={$data['field_id']}">
                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        {__("Field For")}
                    </label>
                    <div class="col-sm-9">
                        <select id="js_field-for" class="form-control" name="field_for">
                            <option {if $data['field_for'] == "user"}selected{/if} value="user">{__("User Profile")}</option>
                            <option {if $data['field_for'] == "page"}selected{/if} value="page">{__("Page")}</option>
                            <option {if $data['field_for'] == "group"}selected{/if} value="group">{__("Group")}</option>
                            <option {if $data['field_for'] == "event"}selected{/if} value="event">{__("Event")}</option>
                        </select>
                        <span class="help-block">
                            {__("Where you want to use this field for user profile, page, group or event")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Label")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="label" value="{$data['label']}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Type")}
                    </label>
                    <div class="col-sm-9">
                        <select id="js_field-type" class="form-control" name="type">
                            <option {if $data['type'] == "textbox"}selected{/if} value="textbox">{__("Textbox")}</option>
                            <option {if $data['type'] == "textarea"}selected{/if} value="textarea">{__("Textarea")}</option>
                            <option {if $data['type'] == "selectbox"}selected{/if} value="selectbox">{__("Select Box")}</option>
                        </select>
                    </div>
                </div>
                <div id="js_field-select-options" class="form-group {if $data['type'] != 'selectbox'}x-hidden{/if}">
                    <label class="col-sm-3 control-label text-left">
                        {__("Select Options")}
                    </label>
                    <div class="col-sm-9">
                        <textarea rows="5" class="form-control" name="select_options">{$data['select_options']}</textarea>
                        <span class="help-block">
                            {__("One option per line")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Description")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="description">{$data['description']}</textarea>
                        <span class="help-block">
                            {__("The description will show under the field")}
                        </span>
                    </div>
                </div>
                <div id="js_field-place" class="form-group {if $data['field_for'] != 'user'}x-hidden{/if}">
                    <label class="col-sm-3 control-label text-left">
                        {__("Place")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control" name="place">
                            <option {if $data['place'] == "basic"}selected{/if} value="basic">{__("Basic Info")}</option>
                            <option {if $data['place'] == "work"}selected{/if} value="work">{__("Work Info")}</option>
                            <option {if $data['place'] == "location"}selected{/if} value="location">{__("Location Info")}</option>
                            <option {if $data['place'] == "education"}selected{/if} value="education">{__("Education Info")}</option>
                            <option {if $data['place'] == "other"}selected{/if} value="other">{__("Other Info")}</option>
                        </select>
                        <span class="help-block">
                            {__("Field place in settings page")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Value Length")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="length" value="{$data['length']}">
                        <span class="help-block">
                            {__("Default value is 32, and max value is 1000")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Order")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="field_order" value="{$data['field_order']}">
                        <span class="help-block">
                            {__("The order of this field, custom fields will be displayed in ascending order")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Mandatory")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="mandatory">
                            <input type="checkbox" name="mandatory" id="mandatory" {if $data['mandatory']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("User must fill the field")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Show in Registration")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="in_registration">
                            <input type="checkbox" name="in_registration" id="in_registration" {if $data['in_registration']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show the field in the user registration, create page, create group or create event")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Show in Profile Page")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="in_profile">
                            <input type="checkbox" name="in_profile" id="in_profile" {if $data['in_profile']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show the field in the user's profile page, fan page, group or event")}
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
    {elseif $sub_view == "add"}
        <div class="panel-body">
            <form class="js_ajax-forms form-horizontal" data-url="admin/custom_fields.php?do=add">
                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        {__("Field For")}
                    </label>
                    <div class="col-sm-9">
                        <select id="js_field-for" class="form-control" name="field_for">
                            <option value="user">{__("User Profile")}</option>
                            <option value="page">{__("Page")}</option>
                            <option value="group">{__("Group")}</option>
                            <option value="event">{__("Event")}</option>
                        </select>
                        <span class="help-block">
                            {__("Where you want to use this field for user profile, page, group or event")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Label")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="label">
                        <span class="help-block">
                            {__("The label of your custom field, also will be used as a placeholder")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Type")}
                    </label>
                    <div class="col-sm-9">
                        <select id="js_field-type" class="form-control" name="type">
                            <option value="textbox">{__("Textbox")}</option>
                            <option value="textarea">{__("Textarea")}</option>
                            <option value="selectbox">{__("Select Box")}</option>
                        </select>
                        <span class="help-block">
                            {__("The type of your custom field")}
                        </span>
                    </div>
                </div>
                <div id="js_field-select-options" class="form-group x-hidden">
                    <label class="col-sm-3 control-label text-left">
                        {__("Select Options")}
                    </label>
                    <div class="col-sm-9">
                        <textarea rows="5" class="form-control" name="select_options"></textarea>
                        <span class="help-block">
                            {__("One option per line")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Description")}
                    </label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="description"></textarea>
                        <span class="help-block">
                            {__("The description will show under the field")}
                        </span>
                    </div>
                </div>
                <div id="js_field-place" class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Place")}
                    </label>
                    <div class="col-sm-9">
                        <select class="form-control" name="place">
                            <option value="basic">{__("Basic Info")}</option>
                            <option value="work">{__("Work Info")}</option>
                            <option value="location">{__("Location Info")}</option>
                            <option value="education">{__("Education Info")}</option>
                            <option value="other">{__("Other Info")}</option>
                        </select>
                        <span class="help-block">
                            {__("Field place in settings page")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Value Length")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="length" value="32">
                        <span class="help-block">
                            {__("Default value is 32, and max value is 1000")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Order")}
                    </label>
                    <div class="col-sm-9">
                        <input class="form-control" name="field_order" value="1">
                        <span class="help-block">
                            {__("The order of this field, custom fields will be displayed in ascending order")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Mandatory")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="mandatory">
                            <input type="checkbox" name="mandatory" id="mandatory">
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("User must fill the field")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Show in Registration")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="in_registration">
                            <input type="checkbox" name="in_registration" id="in_registration">
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show the field in the user registration, create page, create group or create event")}
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label text-left">
                        {__("Show in Profile Page")}
                    </label>
                    <div class="col-sm-9">
                        <label class="switch" for="in_profile">
                            <input type="checkbox" name="in_profile" id="in_profile">
                            <span class="slider round"></span>
                        </label>
                        <span class="help-block">
                            {__("Show the field in the user's profile page, fan page, group or event")}
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
    {/if}
</div>