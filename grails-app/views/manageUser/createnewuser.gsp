<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Form Wizard - Ace Admin</title>

<meta name="layout" content="adminlayout">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<r:script>

    jQuery(function ($) {

//                $('[data-rel=tooltip]').tooltip();
//
//                $(".select2").css('width','200px').select2({allowClear:true})
//        .on('change', function(){
//                $(this).closest('form').validate().element($(this));
//                });


        var $validation = true;
        $('#fuelux-wizard').ace_wizard().on('change',function (e, info) {
            if (info.step == 1 && $validation) {
                if (!$('#validation-form').valid()) return false;
            }
        }).on('finished',function (e) {
                    bootbox.dialog({
                        message: "Thank you! Your information was successfully saved!",
                        buttons: {
                            "success": {
                                "label": "OK",
                                "className": "btn-sm btn-primary"
                            }
                        }
                    });
                }).on('stepclick', function (e) {
                    //return false;//prevent clicking on steps
                });


//        $('#skip-validation').removeAttr('checked').on('click', function(){
//                $validation = this.checked;
//                if(this.checked) {
//                $('#sample-form').hide();
//                $('#validation-form').removeClass('hide');
//                }
//        else {
//                $('#validation-form').addClass('hide');
//                $('#sample-form').show();
//                }
//        });


        //documentation : http://docs.jquery.com/Plugins/Validation/validate


        $.mask.definitions['~'] = '[+-]';
        $('#phone').mask('(999) 999-9999');

        jQuery.validator.addMethod("phone", function (value, element) {
            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1, 6})?$/.test(value);
        }, "Enter a valid phone number.");

        $('#validation-form').validate({
            errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 5
                },
                password2: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                name: {
                    required: true
                },
                phone: {
                    required: true,
                    phone: 'required'
                },
                url: {
                    required: true,
                    url: true
                },
                comment: {
                    required: true
                },
                state: {
                    required: true
                },
                platform: {
                    required: true
                },
                subscription: {
                    required: true
                },
                gender: 'required',
                agree: 'required'
            },

            messages: {
                email: {
                    required: "Please provide a valid email.",
                    email: "Please provide a valid email."
                },
                password: {
                    required: "Please specify a password.",
                    minlength: "Please specify a secure password."
                },
                subscription: "Please choose at least one option",
                gender: "Please choose gender",
                agree: "Please accept our policy"
            },

            invalidHandler: function (event, validator) { //display error alert on form submit
                $('.alert-danger', $('.authentication-form')).show();
            },

            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },

            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
                $(e).remove();
            },

            errorPlacement: function (error, element) {
                if (element.is(':checkbox') || element.is(':radio')) {
                    var controls = element.closest('div[class*="col-"]');
                    if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
                    else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                }
                else if (element.is('.select2')) {
                    error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                }
                else if (element.is('.chosen-select')) {
                    error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                }
                else error.insertAfter(element.parent());
            },

            submitHandler: function (form) {
            },
            invalidHandler: function (form) {
            }
        });


//        $('#modal-wizard .modal-header').ace_wizard();
//        $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
    })

</r:script>



</head>

<body>

<div class="row-fluid">
<div class="span12">
<div class="widget-box">
<div class="widget-header widget-header-blue widget-header-flat">
    <h4 class="lighter">New Item Wizard</h4>
</div>

<div class="widget-body">
<div class="widget-main">
<div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
    <ul class="wizard-steps">
        <li data-target="#step1" class="active">
            <span class="step">1</span>
            <span class="title">Validation states</span>
        </li>

        <li data-target="#step2">
            <span class="step">2</span>
            <span class="title">Alerts</span>
        </li>

        <li data-target="#step3">
            <span class="step">3</span>
            <span class="title">Payment Info</span>
        </li>

        <li data-target="#step4">
            <span class="step">4</span>
            <span class="title">Other Info</span>
        </li>
    </ul>
</div>

<hr/>

<div class="step-content row-fluid position-relative" id="step-container">
<div class="step-pane active" id="step1">
    <h3 class="lighter block green">Enter the following information</h3>

    <form class="form-horizontal " id="validation-form" method="get">
        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">Email Address:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="email" name="email" id="email" class="col-xs-12 col-sm-6" value=""/>
                </div>
            </div>
        </div>

        <div class="space-2"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password">Password:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="password" name="password" id="password" class="col-xs-12 col-sm-4" value="AN231290SZ"/>
                </div>
            </div>
        </div>

        <div class="space-2"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password2">Confirm Password:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="password" name="password2" id="password2" class="col-xs-12 col-sm-4"
                           value="AN231290SZ"/>
                </div>
            </div>
        </div>

        <div class="hr hr-dotted"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">Company Name:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" id="name" name="name" class="col-xs-12 col-sm-5" value="MBSTU"/>
                </div>
            </div>
        </div>

        <div class="space-2"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="phone">Phone Number:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="icon-phone"></i>
                    </span>

                    <input type="tel" id="phone" name="phone" value="01745726083"/>
                </div>
            </div>
        </div>

        <div class="space-2"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="url">Company URL:</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="url" id="url" name="url" class="col-xs-12 col-sm-8" value="http://www.mbstu.ac.bd"/>
                </div>
            </div>
        </div>

        <div class="hr hr-dotted"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right">Subscribe to</label>

            <div class="col-xs-12 col-sm-9">
                <div>
                    <label>
                        <input name="subscription" value="1" type="checkbox" class="ace"/>
                        <span class="lbl">Latest news and announcements</span>
                    </label>
                </div>

                <div>
                    <label>
                        <input name="subscription" value="2" type="checkbox" class="ace"/>
                        <span class="lbl">Product offers and discounts</span>
                    </label>
                </div>
            </div>
        </div>

        <div class="space-2"></div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right">Gender</label>

            <div class="col-xs-12 col-sm-9">
                <div>
                    <label class="blue">
                        <input name="gender" value="1" type="radio" class="ace"/>
                        <span class="lbl">Male</span>
                    </label>
                </div>

                <div>
                    <label class="blue">
                        <input name="gender" value="2" type="radio" class="ace"/>
                        <span class="lbl">Female</span>
                    </label>
                </div>
            </div>
        </div>

        <div class="hr hr-dotted"></div>


        <div class="form-group">
            <div class="col-xs-12 col-sm-4 col-sm-offset-3">
                <label>
                    <input name="agree" id="agree" type="checkbox" class="ace"/>
                    <span class="lbl">I accept the policy</span>
                </label>
            </div>
        </div>
    </form>
</div>

<div class="step-pane" id="step2">
    <div class="row-fluid">

    </div>
</div>

<div class="step-pane" id="step3">
    <div class="center">
        <h3 class="blue lighter">This is step 3</h3>

    </div>
</div>

<div class="step-pane" id="step4">
    <div class="center">
        <h3 class="green">Congrats!</h3>
        Your product is ready to ship! Click finish to continue!
    </div>
</div>
</div>

<hr/>

<div class="row-fluid wizard-actions">
    <button class="btn btn-prev">
        <i class="icon-arrow-left"></i>
        Prev
    </button>

    <button class="btn btn-success btn-next" data-last="Finish ">
        Next
        <i class="icon-arrow-right icon-on-right"></i>
    </button>
</div>
</div><!-- /widget-main -->
</div><!-- /widget-body -->
</div>
</div>
</div>

</body>
</html>
