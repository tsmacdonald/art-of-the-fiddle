document.addEventListener("turbolinks:load", function() {
    $("#artwork_tags").select2(
	{
	    multiple: true,
	    tags: true,
	    width: "100%"
	}
    );
});
