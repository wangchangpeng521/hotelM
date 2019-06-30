<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>客房列表界面</title>
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-2.1.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function () {
			$("td,th").addClass("text-center");
		});
	</script>
</head>
<body>
<div class="row">
	<div class="col-md-4 col-md-offset-1"><h3>欢迎${user.username}来到客房预定界面</h3></div>
</div>
<div class="row">
	<table class="table table-hover">
		<tr><th>编号</th><th>图片</th><th>房间描述</th><th>价格</th><th>房间状况</th><th>操作</th></tr>
		<c:forEach items="${rooms}" var="room">
		<tr><td>${room.rid}</td><td><img  id="image" src="${pageContext.request.contextPath }${room.image }" width="100px" height="60px" ></td><td>${room.type}</td><td>${room.price}</td><td>还剩${room.num}间</td><td><button type="button" class="btn btn-primary ss"  data-toggle="modal" data-target="#myModal" roomPrice="${room.price}" roomId="${room.rid}" >预定</button></td></tr>
		</c:forEach>
	</table>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">预定房间</h4>
			</div>
			<div class="modal-body">
				<form id="bookz">
					<div class="form-group">
						<label >入住时间：</label>
						<input type="date" id="bookTime"  name="booktime" placeholder="入住时间">
					</div>
					<div class="form-group">
						<label >离开时间：</label>
						<input type="date" id="leaveTime"  name="leavetime" placeholder="离开时间">
					</div>
					<label >预定房间数：</label>
					<div class="form-group">
						<select class="form-control" name="roomnum" style="width: 200px" id="days">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>

						</select>
					</div>
					<label>总价格/元：</label>
					<div class="form-group">
						<input name="price" type="text" id="price">
					</div>
					<%--uid--%>
					<div class="form-group">
						<input name="uid" type="hidden" value="${user.uid}">
					</div>
					<div class="form-group">
						<input name="rid" type="hidden" id="roomID">
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="bookRooms">预定</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel2">我的订单</h4>
			</div>
			<div class="modal-body" id="Myorder">
				<%--显示订单信息下--%>
				<h3>大家好 我是小沫</h3>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="bookRoomss">付钱</button>
			</div>
		</div>
	</div>
</div>

<div></div>

</body>
<script type="text/javascript">
	$(function () {
		$("#bookRooms").click(function () {
			var spp=$("#roomID").attr("roomId");
			$("#roomID").val(spp);

			$.ajax({
				url:"${pageContext.request.contextPath}/room/bookRoom",
				data:$("#bookz").serialize(),
				type:"post",
				success: function (result) {
					alert("恭喜你，预定成功"+result.msg);
					$("#myModal").modal("hide");
					findOrder();
				}
			});


		});
		function findOrder(){
			//异步请求 获取订单信息根据username查找最新的订单Orderby订单id  成功之后 写到我的第二个模态框中

			//手动打开一个模态框 内容是订单的信息
			$("#myModal2").modal("show");
		}
		var first = null;
		$(".ss").click(function () {
			$("#bookz")[0].reset();
			var priceCount = $(this).attr("roomPrice");
			$("#price").val(priceCount);
			first =  priceCount;

		});
		$("#days").change(function () {
			var d=$(this).val();
			$("#price").val(d*first);

		});
	});

</script>
</html>