﻿$(document).ready(function () {
    if ($('.datatable-1').length > 0) {
        $('.datatable-1').dataTable();
        $('.dataTables_paginate').addClass('btn-group datatable-pagination');
        $('.dataTables_paginate > a').wrapInner('<span />');
        $('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
        $('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');

        $('.slider-range').slider({
            range: true,
            min: 0,
            max: 20000,
            values: [3000, 12000],
            slide: function (event, ui) {
                $(this).find('.ui-slider-handle').attr('title', ui.value);
            },
        });

        $('#amount').val('$' + $('.slider-range').slider('values', 0) + ' - $' + $('.slider-range').slider('values', 1));


        //Graph/Chart index.html

        var d1 = [[0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5], [8, 5]];
        var d2 = [[0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5], [6, 2], [7, 10], [8, 8]];

        var plot = $.plot($('#placeholder2'),
            [{ data: d1, label: 'Profits' }, { data: d2, label: 'Expenses' }], {
                lines: {
                    show: true,
                    fill: true, /*SWITCHED*/
                    lineWidth: 2
                },
                points: {
                    show: true,
                    lineWidth: 5
                },
                grid: {
                    clickable: true,
                    hoverable: true,
                    autoHighlight: true,
                    mouseActiveRadius: 10,
                    aboveData: true,
                    backgroundColor: '#fff',
                    borderWidth: 0,
                    minBorderMargin: 25,
                },
                colors: ['#55f3c0', '#0db37e', '#b4fae3', '#e0d1cb'],
                shadowSize: 0
            });

        function showTooltip(x, y, contents) {
            $('<div id="gridtip">' + contents + '</div>').css({
                position: 'absolute',
                display: 'none',
                top: y + 5,
                left: x + 5
            }).appendTo('body').fadeIn(300);
        }

        var previousPoint = null;
        $('#placeholder2').bind('plothover', function (event, pos, item) {
            $('#x').text(pos.x.toFixed(2));
            $('#y').text(pos.y.toFixed(2));

            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;

                    $('#gridtip').remove();
                    var x = item.datapoint[0].toFixed(0),
                        y = item.datapoint[1].toFixed(0);

                    showTooltip(item.pageX, item.pageY,
                        'x : ' + x + '&nbsp;&nbsp;&nbsp; y : ' + y);
                }
            }
            else {
                $('#gridtip').remove();
                previousPoint = null;
            }
        });
    }

    else {
        var d1 = [[0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5], [8, 5]];
        var d2 = [[0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5], [6, 2], [7, 10], [8, 8]];

        var plot = $.plot($("#placeholder"),
            [{ data: d1, label: "Data A" }, { data: d2, label: "Data B" }], {
                lines: {
                    show: true,
                    fill: false,
                    lineWidth: 2
                },
                points: {
                    show: true,
                    lineWidth: 5
                },
                grid: {
                    clickable: true,
                    hoverable: true,
                    autoHighlight: true,
                    mouseActiveRadius: 10,
                    aboveData: true,
                    backgroundColor: "#fafafa",
                    borderWidth: 0,
                    minBorderMargin: 25,
                },
                colors: ["#090", "#099", "#609", "#900"],
                shadowSize: 0
            });

        var d1 = [[0, 1], [1, 14], [2, 5], [3, 4], [4, 5], [5, 1], [6, 14], [7, 5], [8, 5]];
        var d2 = [[0, 5], [1, 2], [2, 10], [3, 1], [4, 9], [5, 5], [6, 2], [7, 10], [8, 8]];

        var plot = $.plot($("#placeholder2"),
            [{ data: d1, label: "Data Y" }, { data: d2, label: "Data X" }], {
                lines: {
                    show: true,
                    fill: true, /*SWITCHED*/
                    lineWidth: 2
                },
                points: {
                    show: true,
                    lineWidth: 5
                },
                grid: {
                    clickable: true,
                    hoverable: true,
                    autoHighlight: true,
                    mouseActiveRadius: 10,
                    aboveData: true,
                    backgroundColor: "#fafafa",
                    borderWidth: 0,
                    minBorderMargin: 25,
                },
                colors: ["#090", "#099", "#609", "#900"],
                shadowSize: 0
            });

        function showTooltip(x, y, contents) {
            $('<div id="gridtip">' + contents + '</div>').css({
                position: 'absolute',
                display: 'none',
                top: y + 5,
                left: x + 5
            }).appendTo("body").fadeIn(300);
        }

        var previousPoint = null;
        $("#placeholder2").bind("plothover", function (event, pos, item) {
            $("#x").text(pos.x.toFixed(2));
            $("#y").text(pos.y.toFixed(2));

            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;

                    $("#gridtip").remove();
                    var x = item.datapoint[0].toFixed(0),
                        y = item.datapoint[1].toFixed(0);

                    showTooltip(item.pageX, item.pageY,
                        "x : " + x + "&nbsp;&nbsp;&nbsp; y : " + y);
                }
            }
            else {
                $("#gridtip").remove();
                previousPoint = null;
            }
        });

        // PREDEFINED DATA
        var data = [
            { label: "Series1", data: [[1, 10]] },
            { label: "Series2", data: [[1, 30]] },
            { label: "Series3", data: [[1, 90]] }
        ];

        // DEFAULT
        $.plot($("#pie-default"), data,
            {
                series: {
                    pie: {
                        show: true
                    }
                }
            });

        // DEFINE ACTIONS FOR pieHover & pieClick
        function pieHover(event, pos, obj) {
            if (!obj)
                return;
            percent = parseFloat(obj.series.percent).toFixed(2);
            $("#hover").html('<span>' + obj.series.label + ' - ' + percent + '%</span>');
        }

        function pieClick(event, pos, obj) {
            if (!obj)
                return;
            percent = parseFloat(obj.series.percent).toFixed(2);
            alert('' + obj.series.label + ': ' + percent + '%');
        }

        // DONUT
        $.plot($("#pie-donut"), data,
            {
                series: {
                    pie: {
                        innerRadius: 50,
                        show: true
                    }
                }
            });

        // DONUT + INTERACTIVE
        $.plot($("#pie-interactive"), data,
            {
                series: {
                    pie: {
                        innerRadius: 50,
                        show: true
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });

        $("#pie-interactive").bind("plothover", pieHover);
        $("#pie-interactive").bind("plotclick", pieClick);
    }
});


$("#danhmuc").on("change", function () {
    if (this.value == 2) {
        $(".giaSale").html('<input type="number" placeholder="Giá sale" class="span8" id="giasale" min="0" required><span class="add-on">VNĐ</span>');
    }
    else {
        $(".giaSale").html('<input type="number" placeholder="Giá sale" class="span8" id="giasale" min="0" disabled required><span class="add-on">VNĐ</span>');
    }
});

$(".updatesp").click(function (event) {
    var getType = $(this).attr('id');
    var type = getType.substring(3, getType.length);
    var sanPhamDTO = {
        MaSanPham: $("#MaSanPham").val(),
        TenSanPham: $("#ten").val(),
        MoTa: $("#mota").val(),
        HangSanXuat: $("#hangsanxuat").val(),
        NamSanXuat: $("#namsanxuat").val(),
        GiaBan: $("#giaban").val(),
        MaDanhMuc: $("#danhmuc").val(),
        GiaSale: $("#giasale").val(),
        SizeS: $("#sizes").val(),
        SizeM: $("#sizem").val(),
        SizeL: $("#sizel").val(),
        SizeXL: $("#sizexl").val(),
        SizeXXL: $("#sizexxl").val()
    };
    if (type == 2) {
        sanPhamDTO.AnhSanPham = $('.imagesp').attr('src');
    }
    if (sanPhamDTO.TenSanPham != "" && sanPhamDTO.MoTa != "" && sanPhamDTO.HangSanXuat != "" && sanPhamDTO.NamSanXuat != "" && sanPhamDTO.GiaBan != "") {
        if (sanPhamDTO.MaDanhMuc === 2 && sanPhamDTO.GiaSale !== "" && sanPhamDTO.GiaBan <= sanPhamDTO.GiaSale) {
            $.notify("Giá sale phải nhỏ hơn giá bán!", "warning");
        }
        else if (sanPhamDTO.MaDanhMuc === 2 && sanPhamDTO.GiaSale !== "" && sanPhamDTO.GiaBan > sanPhamDTO.GiaSale) {
            event.preventDefault();
            var formData = new FormData();
            for (var sp in sanPhamDTO) {
                formData.append(sp, sanPhamDTO[sp]);
            }
            var file = $("#anh")[0].files[0];
            formData.append("anh", file);
            $.ajax({
                type: 'post',
                url: '/admin/Manage/UpdateProduct',
                data: formData,
                contentType: false,
                processData: false,
                success: function (response) {
                    if (response) {
                        if (parseInt(type) == 1)
                            $.notify("Thêm sản phẩm thành công!", "success");
                        else if (parseInt(type) == 2)
                            $.notify("Sửa sản phẩm thành công!", "success");
                        window.setTimeout(function () { window.location.reload(); }, 1000);
                    }
                    else {
                        $.notify("Thất bại!", "error");
                    }
                }
            });
        } else if (sanPhamDTO.MaDanhMuc !== 2 && sanPhamDTO.GiaSale === "") {
            event.preventDefault();
            var formData = new FormData();
            for (var sp in sanPhamDTO) {
                formData.append(sp, sanPhamDTO[sp]);
            }
            var file = $("#anh")[0].files[0];
            formData.append("anh", file);
            formData.append("type", type);
            $.ajax({
                type: 'post',
                url: '/admin/Manage/UpdateProduct',
                data: formData,
                contentType: false,
                processData: false,
                success: function (response) {
                    if (response) {
                        if (parseInt(type) == 1)
                            $.notify("Thêm sản phẩm thành công!", "success");
                        else if (parseInt(type) == 2)
                            $.notify("Sửa sản phẩm thành công!", "success");
                        window.setTimeout(function () { window.location.reload(); }, 1000);
                    }
                    else {
                        $.notify("Thất bại!", "error");
                    }
                }
            });
        }
    } else {
    }
});

$(".deleteproduct").click(function () {
    var getProduct = $(this).attr('id');
    var idProduct = getProduct.substring(2, getProduct.length);
    $.ajax({
        type: 'post',
        url: '/admin/Manage/DeleteProduct',
        data: { idProduct: parseInt(idProduct) },
        success: function (response) {
            $.notify(response.message, response.status);
            if (response.status == "success")
                window.setTimeout(function () { window.location.reload(); }, 1000);
        }
    });
});


//Confirm cart
$('.confirmcart').click(function () {
    var getCart = $(this).attr('id');
    var idCart = getCart.substring(4, getCart.length);
    $.ajax({
        type: 'post',
        url: '/admin/Manage/ConfirmCart',
        data: { idCart: parseInt(idCart) },
        success: function (response) {
            $.notify(response.message, response.status);
            window.setTimeout(function () { window.location.reload(); }, 1000);
        }
    });
});

//Login
//$("#__AjaxAntiForgeryForm").validate({
//    rules: {
//        Password: {
//            required: true,
//            minlength: 6
//        },
//        Email: {
//            required: true,
//            email: true
//        }
//    },
//    messages: {
//        Password: {
//            required: "Mật khẩu không được để trống",
//            minlength: "Mật khẩu có độ dài tối thiểu là 6 ký tự"
//        },
//        Email: {
//            email: "Hãy nhập đúng định dạng email"
//        }
//    },
//    submitHandler: function (form) {
//        Login();
//    }
//});

//Login
$("#loginbtn").click(function (event) {
    var model = {
        User: $('#EmailLogin').val(),
        Password: $('#PassLogin').val(),
        RememberMe: $('#RememberMe').is(":checked")
    };
    var checkTM = true;
    if (model.Email == '' || model.Password == '') {
        checkTM = false;
        $.notify("Hãy nhập đủ thông tin", "error");
    }
    if (checkTM) {
        event.preventDefault();
        $.ajax({
            type: "POST",
            url: '/Login/UserLogin',
            data: AddAntiForgeryToken({ model: model }),
            success: function (result) {
                $.notify(result.message, result.status);
                if (result.status == "success") {
                    window.setTimeout(function () { location.href = "/admin/Manage/Account"; }, 500);
                } else {
                    //$('#Login').removeAttr("disabled");
                }
            },
            error: function (ex) {
                $.notify("Đăng nhập không thành công!", "error");
                return false;
            }
        });
    }
});
//To accept ValidateAntiForgeryToken in controller
//AddAntiForgeryToken = function (data) {
//    data.__RequestVerificationToken = $('#__AjaxAntiForgeryForm input[name=__RequestVerificationToken]').val();
//    return data;
//};