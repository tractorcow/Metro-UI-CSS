<% if MoreThanOnePage %>
	<div class="pagination">
		<ul>
			<% if NotFirstPage %>
				<li class="first">
					<a href="$FirstLink" title="View the first page"></a>
				</li>
				<li class="prev">
					<a href="$PrevLink" title="View the previous page"></a>
				</li>
			<% else %>
				<li class="first disabled">
					<a href="$FirstLink" title="View the first page"></a>
				</li>
				<li class="prev disabled">
					<a href="$FirstLink" title="View the previous page"></a>
				</li>
			<% end_if %>

			<% loop PaginationSummary(4) %>
				<% if Link %>
					<li class="<% if CurrentBool %>disabled<% end_if %>"><a href="$Link">$PageNum</a></li>
				<% else %>
					<li class="disabled"><a href="#" class="disabled">&hellip;</a></li>						
				<% end_if %>
			<% end_loop %>

			<% if NotLastPage %>
				<li class="next">
					<a href="$NextLink" title="View the next page"></a>
				</li>
				<li class="last">
					<a href="$LastLink" title="View the last page"></a>
				</li>
			<% else %>
				<li class="next disabled">
					<a href="$LastLink" title="View the next page"></a>
				</li>
				<li class="last disabled">
					<a href="$LastLink" title="View the last page"></a>
				</li>
			<% end_if %>
		</ul>
	</div>
<% end_if %>