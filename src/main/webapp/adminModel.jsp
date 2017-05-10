   <%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
    <div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h3 class="modal-title" id="myModalLabel">
					对用户 <span id="name"></span> 封号
				</h3>
			</div>
			<div class="modal-body" id="allInfo" style="margin-left: 100px;">
				<div class="radio">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios1" value=" 一天" checked> 一天
					</label>
				</div>
				<div class="radio">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios2" value="一周">一周
					</label>
				</div>
				<div class="radio">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios3" value="一月">一月
					</label>
				</div>
				<div class="radio">
					<label>
						<input type="radio" name="optionsRadios" id="optionsRadios4" value="一年">一年
					</label>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn" id="clickBut">
					确定
				</button>
			</div>
		</div>
	</div>
</div>