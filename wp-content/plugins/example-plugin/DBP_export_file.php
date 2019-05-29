<?php
    if(isset($_POST['export'])){

        global $wpdb;

        $format = $_POST['format'];
        $record_id = $_POST['record_id'];
        $file_name = $_POST['file_name'];

        $folder = DBP_dir."/backup_files/";

        $file = $folder."$file_name.$format";
        $DBP_file = fopen($file, "w+");

        $result= $wpdb->get_results("SELECT * FORM dbbd_head_set WHERE id=$record_id", ARRAY_A);
    }

?>

<form methos="post">
    <input class="input" type="radio" name="format"  value="json" checked>
    <label class="txt1">Json Format:</label>
    
    <input class="input" type="radio" name="format" value="json" checked>
    <label class="txt1">CSV Format:</label>

    <input class="input" type="text" name="recored_id">
    <input class="input" type="text" name="file_name">

    <button class="DBP_form-btn" type="submit" name="export">Save</button>
    https://youtu.be/L5WW-m8JcE8
</form>