<div id="$Name" class="field<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label class="left" for="$ID">$Title</label><% end_if %>
	<% if $class = 'TextField' || $class = 'EmailField' || $class = 'TextareaField' %>
		<div class="middleColumn input-control text">
			$Field
			<button type='button' class="btn-clear"></button>
		</div>
	<% else_if $class = 'PasswordField' %>
		<div class="middleColumn input-control password">
			$Field
			<button type='button' class="btn-reveal"></button>
		</div>
	<% else %>
		<div class="middleColumn">
			$Field
		</div>
	<% end_if %>
	<% if $RightTitle %><label class="right" for="$ID">$RightTitle</label><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
