<template>
	<section class="sub">
	  <!-- inBox -->
	  <div class="inBox">
		<!-- tabCommon -->
		<div class="tabCommon">
		  <div class="tabConList">
			<div class="title-wrap">
			  <h3 class="title">
				좌석 예약 현황 ( <span class="blue">0</span>건 예약 완료 /
				<span class="orange">1</span>건 예약 가능)
			  </h3>
			  <!-- <div id="clock" class="pos-r">서버시간 : 02:16:30 PM</div> -->
			</div>
			<div class="reserveListBox">
			  <div id="div_cur_lec_show" class="tb-type2 bdColor-gy reserve">
				<table class="" cellspacing="0" cellpadding="0">
				  <thead>
					<tr>
					  <th>학원</th>
					  <th>강좌정보</th>
					  <th>좌석</th>
					</tr>
				  </thead>
				  <tbody>
					<tr class="rsvIng">
					  <!-- <tr class="rsvEnd"> -->
					  <td class="th">
						<!-- 러셀 강남<span>미예약</span> -->
						러셀 강남<span class="bg-red">예약완료</span>
					  </td>
					  <td class="con">
						<div class="box">
						  <ul>
							<li>김선생님</li>
							<li>A강의실</li>
							<li>053F1[5]</li>
							<li class="last">수업일 : 2024-05-16 (목) 17:00</li>
						  </ul>
						  <p class="tit">온라인 접수3</p>
						  <!-- <p class="date">
							<a href="javascript:;" onclick="javascript:$('.layer').toggle();">
							  강의공지 확인 &gt;
							</a>
							예약기간 : 2024-05-09 8:00 ~ 2024-05-15 10:00
						  </p>
						  <div class="layer">좌석을 선택 후 취소한 경우 해당 좌석을 다른 학생이 선점할 수 있습니다.</div> -->
						  <p class="date">
							<a href="javascript:;" @click="toggleNotice">
							  강의공지 확인 &gt;
							</a>
							예약기간 : 2024-05-09 8:00 ~ 2024-05-15 10:00
						  </p>
						  <div v-if="state.isNoticeVisible" class="layer">
							좌석을 선택 후 취소한 경우 해당 좌석을 다른 학생이 선점할 수 있습니다.
						  </div>
						</div>
					  </td>
					  <td class="last">
						<a href="javascript:;" @click="state.isOpen = true">예약하기</a>
						<!--
						<a href="javascript:void(0);"
						onclick="alert('단과 결제 후 좌석을 예약할 수 있습니다.')" >예약하기</a>
						-->
						<!-- <span class="seatNum">좌석 A-07</span> -->
						<!-- <a href="javascript:void(0);"
						 onclick="confirm('예약을 취소 시키겠습니까?')" >취소하기</a>
						-->
					  </td>
					</tr>
				  </tbody>
				</table>
  
				<!--예약 가능한 강좌가 없을 경우-->
				<!-- <table class="table_type_04" cellspacing="0" cellpadding="0">
				<tbody>
					<tr>
						<td>예약 가능한 강좌가 없습니다.</td>
					</tr>
				</tbody>
			  </table> -->
			  </div>
			  <div class="btm-text-wrap">
				<p class="table-bottom-text orange">
				  <strong>※ 단과 결제 후 좌석을 예약할 수 있습니다.</strong>
				</p>
				<p class="table-bottom-text orange">
				  ※ 공지된 좌석 예약 일정에 맞춰 ‘예약하기’ 버튼이 오픈 됩니다. (기준 시간 : 네이버 표준시계)
				</p>
				<p class="table-bottom-text orange">
				  ※ 서비스 이용을 위해 팝업차단을 해지해 주시기 바랍니다.
				</p>
				<p class="table-bottom-text orange">
				  <strong>※ 사용자 네트워크환경에 따라 예약시간 오차가 있을 수 있습니다.</strong>
				</p>
			  </div>
			</div>
  
			<!--sub 내용 끝-->
		  </div>
		</div>
		<!-- //tabCommon -->
	  </div>
	  <!-- //inBox -->
	</section>
	<Modal :open="state.isOpen" @closemodal="state.isOpen = !state.isOpen">
	  <popResult />
	</Modal>
  </template>
  
  <script setup>
  import { reactive } from 'vue';
  import Modal from '@/components/modalPop.vue';
  import popResult from '@/views/reserve/popReserve.vue';
  
  const state = reactive({
	isOpen: false,
	isNoticeVisible: true,
  });
  
  const toggleNotice = () => {
	state.isNoticeVisible = !state.isNoticeVisible;
  };
  </script>
  
  <style></style>
  