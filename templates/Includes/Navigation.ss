<div class="page">
	<nav class="nav-bar">
		<div class="nav-bar-inner padding10">
			<span class="pull-menu"></span>

			<a href="$BaseURL"><span class="element brand">
				$SiteConfig.Title
			</span></a>

			<% if Menu(1) %>
				<div class="divider"></div>
				<ul class="menu">
					<% loop Menu(1) %>
						<% if Children %>
							<li data-role="dropdown">
								<a>$MenuTitle.XML</a>
								<ul class="dropdown-menu">
									<li><a href="$Link" title="$Title.ATT">$MenuTitle.XML</a></li>
									<li class="divider"></li>
									<% loop Children %>
										<li><a href="$Link" title="$Title.ATT">$MenuTitle.XML</a></li>
									<% end_loop %>
								</ul>
							</li>
						<% else %>
							<li><a href="$Link" title="$Title.ATT">$MenuTitle.XML</a></li>
						<% end_if %>
					<% end_loop %>
				</ul>
			<% end_if %>

		</div>
	</nav>
</div>
