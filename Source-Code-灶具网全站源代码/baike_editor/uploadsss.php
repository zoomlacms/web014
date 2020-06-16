<?php
//中文
$errno	= 0;
if (!isset($_FILES['userfile']) || 0 != $_FILES['userfile']['error']) {
	//上传失败
	$errno	= 3;
}

if ($_FILES['userfile']['size'] > (1024 * 1024 * 3)) {
	//大于3M
	$errno	= 1;
}

$clip	= array();

if (!isset($_FILES['userfile']['type']) || 0 === preg_match('~^image/(gif|jpeg|png)$~i', $_FILES['userfile']['type'], $clip)) {
	//请求的mime-type不匹配
	$errno	= 2;
}

$extName	= $clip[1];
$filePath	= 'upload_files_demo/upload.' . $extName;

if (!@move_uploaded_file($_FILES['userfile']['tmp_name'], $filePath)) {
	//保存失败
	$errno	= 3;
}
?>
<html>
<head>
</head>
<body>
<script>
<?php
if (0 < $errno) {
?>
setTimeout(function(){parent.error("<?php echo $errno; ?>");}, 400);
<?
} else {
?>
setTimeout(function(){parent.geturl("<?php echo $filePath; ?>");}, 400); 
<?php
}
?>
</script>
</body>
</html>