<?php
$d1=strtotime("June 21");
$d2=ceil(($d1-time())/60/60/24);
$build_strategy = getenv('BUILD_STRATEGY');

echo "<h2>Summer Countdown! &#127774;</h2>";
echo "<p>There are " . $d2 ." days until Summer!</p>";
if ($build_strategy == "") {
    echo "<p><b>BUILD_STRATEGY</b> is not set up.</p>";
  } else {
    echo "<p>Build done using <b>" . $build_strategy ."</b> strategy</p>";
  }

?>
