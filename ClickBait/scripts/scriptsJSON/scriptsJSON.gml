// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function importJson(fileName){
	if(file_exists(fileName)){
		jsonString = "";
		var file = file_text_open_read(fileName)
		while(!file_text_eof(file)){
			jsonString += file_text_read_string(file);
			file_text_readln(file);
		}
		file_text_close(file);
		show_debug_message(jsonString);
		return json_decode(jsonString);
		
	}
	return undefined;
}