<label id="$Name" class="field input-control <% if extraClass %> $extraClass<% end_if %>">
	$Field
	<span class="helper right" for="$ID">$Title</span>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</label>
