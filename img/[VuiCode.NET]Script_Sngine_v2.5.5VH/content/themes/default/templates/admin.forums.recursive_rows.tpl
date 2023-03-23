<tr class="treegrid-{$row['forum_id']} {if $row['forum_section'] != '0'}treegrid-parent-{$row['forum_section']}{/if}">
    <td>
        <a target="_blank" href="{$system['system_url']}/forums/{$row['forum_id']}/{$row['title_url']}">
            {$row['forum_name']}
        </a>
    </td>
    <td>
        {$row['forum_description']|truncate:50}
    </td>
    <td>{$row['forum_threads']}</td>
    <td><span class="label label-info">{$row['forum_order']}</span></td>
    <td>
        <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-xs btn-danger js_admin-deleter" data-handle="forum" data-id="{$row['forum_id']}">
            <i class="fa fa-trash-alt"></i>
        </button>
        <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/admincp/forums/edit_forum/{$row['forum_id']}" class="btn btn-xs btn-primary">
            <i class="fa fa-pencil-alt"></i>
        </a>
    </td>
</tr>
{if $row['childs']}
    {foreach $row['childs'] as $_row}
        {include file='admin.forums.recursive_rows.tpl' row = $_row}
    {/foreach}
{/if}