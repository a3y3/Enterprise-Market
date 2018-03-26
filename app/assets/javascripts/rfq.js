$(document).ready(function(){
	if($("body").hasClass("rfq new")){
		$("#btn-post-rfq").on("click", function(e){
			var input_term = $("#commodities-search").val();
			var option = $(".searchable-option[value='"+ input_term + "']");

			if(option.length != 0){
				alert(option.data("value"));
				$("#commodity_type_id").attr("value", option.data("value"));
			}
			else{
				alert("We don't provide the commodity you searched for, yet!");
				e.preventDefault();
			}
		});
	}
});