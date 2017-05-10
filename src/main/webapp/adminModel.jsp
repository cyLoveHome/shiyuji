   <%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
    <div class="modal fade" id="ban" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h3 class="modal-title" id="myModalLabel">
					封号系统
				</h3>
			</div>
			<div class="modal-body" id="allInfo" style="margin-left: 100px;">
					<h4 id="nickName"></h4>
               	 	状态:<span id="state">封号</span>
               	 	<br>
               	 	<div id="showdays">
               	 		<div class="radio">
						<label>
							<input type="radio" name="days" id="optionsRadios1" value="1" checked> 一天
						</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="days" id="optionsRadios2" value="7">一周
							</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="days" id="optionsRadios3" value="30">一月
							</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="days" id="optionsRadios4" value="365">一年
							</label>
						</div>
               	 	</div>
				
			</div>
			<div class="modal-footer">
				<a class="btn btn-primary btn-block" id="handleUser">封号</a> 
			</div>
		</div>
	</div>
</div>