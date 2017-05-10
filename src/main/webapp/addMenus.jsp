<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>

<div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h3 class="modal-title" id="myModalLabel" style="text-align: left;">
														把 ${Menu.mName } 加入到你的菜单专辑
													</h3>
												</div>
												<div class="modal-body" id="allMenus" style="text-align: left;">
													<select id="selectId" style="text-align: left;padding-right: 100px;margin-right: 410px;">
														<option>选择</option>
														<c:if test="${not empty myMenus}">
											            	<c:forEach  items="${myMenus}" var="menus">
																<option value="${menus.msId }">${menus.msName }</option>
															</c:forEach>
														</c:if>
													</select>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn" onclick="collMenu('${Menu.mId}');">
														确定
													</button>
												</div>
											</div>
										</div>
									</div>