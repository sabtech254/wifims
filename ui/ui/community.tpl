{include file="sections/header.tpl"}

<div class="row">
    <div class="col-sm-6">
        <div class="box box-hovered mb20 box-primary">
   

    <div class="col-sm-6" id="update">
        <div class="box box-primary box-hovered mb20 activities">
            <div class="box-header">
                <h3 class="box-title">wifims</h3>
            </div>
            <div class="box-body">
                <b>Update the System</b> <br>
            </div>
            <div class="box-footer" id="currentVersion">ver : <b><?= $version ?></b> </div>
            <div class="box-footer" id="latestVersion">ver : <b><?= $version ?></b> </div>
            <div class="box-footer">

                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <a href="/update.php?step=4" class="btn btn- btn-sm-warning btn-block">Update Database only</a>
                    <a href="./update.php" 
                        class="btn btn-success btn-sm btn-block text-black">Install Latest Version</a>
                </div>
                
            <div class="box-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <a href="./CHANGELOG.md" target="_blank" class="btn btn-default btn-sm btn-block">Current
                        Changelog</a>
                    <a href="https://github.com/sabtech254/wifims/blob/main/CHANGELOG.md" target="_blank"
                        class="btn btn-default btn-sm btn-block">Repo Changelog</a>
                </div>
            </div>
            <div class="box-footer">
               
			   
            </div>
        </div>
    </div>
</div>
<script>
    window.addEventListener('DOMContentLoaded', function() {
        $.getJSON("./version.json?" + Math.random(), function(data) {
            $('#currentVersion').html('Current Version: ' + data.version);
        });
        $.getJSON("https://github.com/sabtech254/wifims/blob/main/version.json?" + Math
            .random(),
            function(data) {
                $('#latestVersion').html('Latest Version: ' + data.version);
            });
    });
</script>
{include file="sections/footer.tpl"}
