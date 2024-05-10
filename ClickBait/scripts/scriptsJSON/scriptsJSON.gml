
//importing Json for fish data
function importJson(fileName){
	if(file_exists(fileName)){
		jsonString = "";
		var file = file_text_open_read(fileName)
		while(!file_text_eof(file)){
			jsonString += file_text_read_string(file);
			file_text_readln(file);
		}
		file_text_close(file);
		//show_debug_message(jsonString);
		return json_parse(jsonString);
		
	}
	return undefined;
}

//finding fish object with ID
function findObject(newId){
	for(var i = 0; i < array_length(global.dataArray); i++){
		if(global.dataArray[i].fishid == newId){
			return global.dataArray[i];
		}
	}
	return noone;
}