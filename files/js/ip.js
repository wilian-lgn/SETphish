$.ajax({
	url: 'php/ip.php',
	type: 'post',
	dataType: 'json',
	data: {
		ip: $('#myIp').html()
	}
});
