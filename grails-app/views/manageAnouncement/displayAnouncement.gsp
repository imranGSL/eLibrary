<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/25/14
  Time: 8:03 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
  <title>Book Fair -Anouncements</title>
    <r:script>
        $(document).ready(function(){
            $("#bangladesh").click(function(){
                $("#japanInfo").hide(1000);
                $("#AustInfo").hide(1000);
                $("#spainInfo").hide(1000);
                $("#banInfo").removeClass("hidden");
                $("#banInfo").show(1000);

            });
            $("#japan").click(function(){
                $("#banInfo").hide();
                $("#AustInfo").hide();
                $("#spainInfo").hide();
                $("#japanInfo").removeClass("hidden");
                $("#japanInfo").show(1000);
            });

            $("#australia").click(function(){
                $("#japanInfo").hide(1000);
                $("#banInfo").hide(1000);
                $("#spainInfo").hide(1000);
                $("#AustInfo").removeClass("hidden");
                $("#AustInfo").show(1000);

            });
            $("#spain").click(function(){
                $("#japanInfo").hide(1000);
                $("#banInfo").hide(1000);
                $("#AustInfo").hide(1000);
                $("#spainInfo").removeClass("hidden");
                $("#spainInfo").show(1000);

            });


                var next = 1;
                $(".add-more").click(function(e){
                    e.preventDefault();
                    var addto = "#field" + next;
                    next = next + 1;
                    var newIn = '<br /><br /><input autocomplete="off" class="span3" id="field' + next + '" name="field' + next + '" type="text" data-provide="typeahead" data-items="8">';
                    var newInput = $(newIn);
                    $(addto).after(newInput);
                    $("#field" + next).attr('data-source',$(addto).attr('data-source'));
                    $("#count").val(next);
                });


            var number_of_field=1;
            $("#addField").click(function(){
               number_of_field++;
               var addNewField="<div class='form-group'>";
                addNewField+="<label class='control-label col-md-4'>Name"+number_of_field+"</label>";
                addNewField+="<div class='col-md-6'>" ;
                addNewField+="<input class='form-control' type='text' name='name"+number_of_field+"'/>";
                addNewField+="</div></div>";
                $("#member").append(addNewField);
            });
        });

    </r:script>

</head>
<body>
<div class="page-header">
    <h1>
        Display Anouncement
    </h1>
</div><!-- /.page-header -->



<div class="col-md-12">
    <div class="col-md-6">
        <button class="btn btn-success " id="bangladesh">Bangladesh</button>
        <button class="btn btn-warning" id="japan">Japan</button>
        <button class="btn btn-info" id="australia">Australia</button>
        <button class="btn btn-danger " id="spain">Spain</button>
    </div>
    <div class="col-md-6">
        <h5 class="alert alert-danger text-danger hidden" id="banInfo"><strong>Bangladesh</strong> is a parliamentary republic with an elected parliament called the Jatiyo Sangshad. With a population of more than 160 million people in a territory of 56,977 sq mi, Bangladesh is the world's eighth most populous country. </h5>
        <h5 class="alert alert-danger text-success hidden" id="japanInfo"><strong>Japan</strong> is a parliamentary republic with an elected parliament called the Jatiyo Sangshad. With a population of more than 160 million people in a territory of 56,977 sq mi, Bangladesh is the world's eighth most populous country.</h5>
        <h5 class="alert alert-danger text-info hidden" id="AustInfo"><strong>Australia</strong> is a parliamentary republic with an elected parliament called the Jatiyo Sangshad. With a population of more than 160 million people in a territory of 56,977 sq mi, Bangladesh is the world's eighth most populous country.</h5>
        <h5 class="alert alert-danger text-warning hidden" id="spainInfo"><strong>Spain</strong> is a parliamentary republic with an elected parliament called the Jatiyo Sangshad. With a population of more than 160 million people in a territory of 56,977 sq mi, Bangladesh is the world's eighth most populous country.</h5>
    </div>
</div>




<form class="form-horizontal" id="member">
<div class="form-group">
    <label class="control-label col-md-4">Name</label>
   <div class="col-md-6">
      <input class="form-control" type="text" name="name1"/>
   </div>
</div>

</form>
<button class="btn btn-danger" id="addField">Add Field</button>
</body>
</html>