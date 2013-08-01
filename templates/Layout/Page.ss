<article class="page secondary" id="page-index">
	<% include PageHeader %>

	<div class="page-region">
		<% if Content %>
			<div class="page-region-content">
				<div class="typography">
					$Content
				</div>
			</div>
		<% end_if %>
		<% if Form %>
			<div class="page-region-content">
				$Form
			</div>
		<% end_if %>
	</div>
</article>
