package com.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.admin.dao.MasterDao;
import com.admin.dao.MemberAdminDao;
import com.admin.domain.MemberAdmin;

public class MemberAdminService extends MasterService<MemberAdmin, Long, MemberAdminDao>{
	public List<MemberAdmin> show(MemberAdminDao dao,Long id) {
		System.out.println("Service : writeIndex까지 들어옴");
		//일자별 가입자리스트를 가져오기위해
		Date date = new Date();
		Date day = new Date();
		day.setTime((id-1) * 24 * 60 * 60 * 1000L);

		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String toDay = simpleDate.format(date.getTime() - day.getTime());
		java.sql.Date todate = java.sql.Date.valueOf(new String(toDay));

		List<MemberAdmin> list = ((MemberAdminDao) dao).show(todate);
		return list;
	}

	public List<MemberAdmin> send(MemberAdminDao dao) {
		List<MemberAdmin> list = ((MemberAdminDao) dao).send();
		return list;
	}

	public List<MemberAdmin> searchAddress(MemberAdminDao dao, String email_add) {
		List<MemberAdmin> list = ((MemberAdminDao) dao)
				.searchAddress(email_add);
		return list;
	}

	// 기간선택 회원리스트
	public List<MemberAdmin> showPeriod(MemberAdminDao dao, String periodStart,
			String periodEnd) {
		java.sql.Date start = java.sql.Date.valueOf(new String(periodStart));
		java.sql.Date end = java.sql.Date.valueOf(new String(periodEnd));
		List<MemberAdmin> list = ((MemberAdminDao) dao).showPeriod(start, end);
		return list;
	}

	// 전체회원리스트
	public List<MemberAdmin> showWhole(MemberAdminDao dao, Long period) {
		System.out.println("memberService : " + period);
		List<MemberAdmin> list = ((MemberAdminDao) dao).showWhole(period);

		return list;
	}
}
