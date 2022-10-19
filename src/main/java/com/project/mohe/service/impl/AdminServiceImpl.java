package com.project.mohe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.project.mohe.dao.AdminDAO;
import com.project.mohe.dao.BongsaDAO;
import com.project.mohe.dao.DonationDAO;
import com.project.mohe.dao.EventDAO;
import com.project.mohe.dao.Funding_payDAO;
import com.project.mohe.dao.Funding_pjDAO;
import com.project.mohe.dao.NoticeDAO;
import com.project.mohe.dao.PartnerDAO;
import com.project.mohe.dao.PopupDAO;
import com.project.mohe.dao.ReviewDAO;
import com.project.mohe.dao.StatusDAO;
import com.project.mohe.dao.UserInfoDAO;
import com.project.mohe.domain.AdminVO;
import com.project.mohe.domain.BongsaVO;
import com.project.mohe.domain.DonationVO;
import com.project.mohe.domain.EventVO;
import com.project.mohe.domain.Funding_pjVO;
import com.project.mohe.domain.NoticeVO;
import com.project.mohe.domain.PagingVO;
import com.project.mohe.domain.PartnerVO;
import com.project.mohe.domain.PopupVO;
import com.project.mohe.domain.ReviewVO;
import com.project.mohe.domain.StatusVO;
import com.project.mohe.domain.UserInfoVO;
import com.project.mohe.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;
	@Autowired
	private UserInfoDAO userInfoDao;
	@Autowired
	private EventDAO eventDao;
	@Autowired
	private Funding_pjDAO funding_pjDao;
	@Autowired
	private BongsaDAO bongsaDao;
	@Autowired
	private PartnerDAO partnerDao;
	@Autowired
	private ReviewDAO reviewDao;
	@Autowired
	private DonationDAO donationDao;
	@Autowired
	private NoticeDAO noticeDao;
	@Autowired
	private PopupDAO popupDao;
	@Autowired
	private Funding_payDAO funding_payDao;
	@Autowired
	private StatusDAO statusDao;
	
	@Override
	public void insertAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateAdmin(AdminVO vo) {
		adminDao.updateAdmin(vo);
		
	}

	@Override
	public void deleteAdmin(AdminVO vo) {
		adminDao.deleteAdmin(vo);
		
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AdminVO> getAdminList(PagingVO vo) {
		return adminDao.getAdminList(vo);
	}
	

	// 관리자 페이징을 위한 행 조회
	@Override
	public PagingVO getAllcnt(PagingVO vo) {
		return adminDao.getAllcnt(vo);
	}

	@Override
	public List<UserInfoVO> adGetUserList(PagingVO vo) {
		return userInfoDao.getAdUserInfoList(vo);
	}
	
	@Override
	public List<EventVO> adGetEventList(PagingVO vo) { 
		return eventDao.getAdEventList(vo);
	}

	@Override
	public List<Funding_pjVO> adGetFdList(PagingVO vo) {
		return funding_pjDao.getAdFunding_pjList(vo);
	}

	@Override
	public List<Funding_pjVO> getFdApprovalList(PagingVO vo) {
		return funding_pjDao.getFdApprovalList(vo);
	}

	@Override
	public List<BongsaVO> getAdBsList(PagingVO vo) {
		return bongsaDao.getAdBsList(vo);
	}

	@Override
	public List<BongsaVO> getAdBsApprovalList(PagingVO vo) {
		return bongsaDao.getAdBsApprovalList(vo);
	}

	@Override
	public List<PartnerVO> getPartnerList(PagingVO vo) {
		return partnerDao.getAdPartnerList(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(PagingVO vo) {
		return reviewDao.getAdReviewList(vo);
	}

	@Override
	public List<DonationVO> getDonationList(PagingVO vo) {
		return donationDao.getAdDonationList(vo);
	}
	
	@Override
	public List<NoticeVO> getNoticeList(PagingVO vo) {
		return noticeDao.getAdNoticeList(vo);
	}

	@Override
	public List<PopupVO> getPopupList(PagingVO vo) {
		return popupDao.getPopupList(vo);
	}

	@Override
	public AdminVO getAdminDetail(AdminVO vo) {
		return adminDao.getAdminDetail(vo);
	}

	// 유저 상세페이지
	@Override
	public UserInfoVO adUserDetail(UserInfoVO vo,Model model) {
		// 유저 정보 가져오기
		vo = userInfoDao.getUserInfo(vo);
		
		// 유저의 참여 봉사리스트 가져와서 model에 저장하기 : 나중에 봉사로 연결
		model.addAttribute("userBsList",adminDao.getAdBsDetail(vo));
		
		// 유저의 참여 펀딩리스트 가져와서 model에 저장하기 : 나중에 봉사로 연결
		model.addAttribute("userFdList",adminDao.getAdFdDetail(vo));
		
		return vo;
	}
	// 회원 수정페이지에서 회원 정보만 불러오는기능
	@Override
	public UserInfoVO getUserInfo(UserInfoVO vo) {
		return userInfoDao.getUserInfo(vo);
	};

	// 펀딩 신청 수락,거부
	@Override
	public void judgFdUpdate(Funding_pjVO vo) {
		if(vo.getFd_judg().equals("ok")) {
			// 신청 수락이면
			funding_pjDao.okFdUpdate(vo);
		}else {
			// 신청 거부면
			funding_pjDao.noFdUpdate(vo);
		}
	}

	@Override
	public void judgBsUpdate(BongsaVO vo) {
		if(vo.getBs_judg().equals("ok")) {
			// 신청 수락이면
			bongsaDao.okBsUpdate(vo);
		}else {
			// 신청 거부면
			bongsaDao.noBsUpdate(vo);
		}
	}
	// 관리자 로그인 확인
	@Override
	public AdminVO adminLogin(AdminVO vo) {
		return adminDao.adminLogin(vo);
	}

	// 회원 사용불가 전환
	@Override
	public void deleteUserInfo(UserInfoVO vo) {
		userInfoDao.updateOutDate(vo);
		
	}
	
	@Override
	public void donationOk(DonationVO vo) {
		donationDao.donationOk(vo);
	}
	
	@Override
	public void deleteNotice(NoticeVO vo) {
		noticeDao.deleteNotice(vo);
	};

	@Override
	public NoticeVO adNoticeDetail(NoticeVO vo) {
		return noticeDao.getNotice(vo);
	}
	
	// 리뷰 상세보기
	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return reviewDao.getReview(vo);
	}
	// 리뷰 삭제하기
	@Override
	public void adDeleteReview(ReviewVO vo) {
		reviewDao.deleteReview(vo);
	}
	// 회원정보 수정기능
	@Override
	public void adUserUpdateInfo(UserInfoVO vo) {
		userInfoDao.updateUser(vo);
	}
	
	// 나중에 수정해야하는 애들 
	

	// 공지사항 수정
	@Override
	public void adNoticeUpdate(NoticeVO vo) {
		adminDao.adNoticeUpdate(vo);
	}

	// 공지사항 추가
	@Override
	public void adNoticeInsert(NoticeVO vo) {
		adminDao.adNoticeInsert(vo);
	}
	
	// 파트너 상세정보 불러오기
	@Override
	public PartnerVO adGetPartner(PartnerVO vo) {
		return adminDao.adGetPartner(vo);
	}

	// 파트너 추가하기
	@Override
	public void adPartnerInsert(PartnerVO vo) {
		adminDao.adPartnerInsert(vo);
	}
	
	// 파트너정보 수정하기
	@Override
	public void adPartnerUpdate(PartnerVO vo) {
		adminDao.adPartnerUpdate(vo);
	}

	@Override
	public void adDeletePartner(PartnerVO vo) {
		partnerDao.deletePartner(vo);
	}

	@Override
	public StatusVO getStatus() {
		// 각각의 정보를 취합해서 전달하기 
		// 펀딩 참여인원, 총 참여금액을 불러오는 메소드
		StatusVO vo = statusDao.getFdStatus();
		// 총 기부금액을 불러오는 메소드
		vo.setAllDonate(statusDao.getDonation().getAllDonate());
		// 봉사 총 참여인원을 불러오는 메소드
		vo.setBsJoinCnt(statusDao.getBsStatus().getBsJoinCnt());
		
		// 승인 대기펀딩,봉사 기부목록 불러오기
		vo.setFdNewCnt(statusDao.getNewFdCnt().getFdNewCnt());
		vo.setBsNewCnt(statusDao.getNewBsCnt().getBsNewCnt());
		vo.setDntNewCnt(statusDao.getNewDntCnt().getDntNewCnt());
		
		return vo;
	}

	@Override
	public void adDeletePopup(PopupVO vo) {
		popupDao.deletePopup(vo);
	}

	@Override
	public void adPopupInsert(PopupVO vo) {
		// 만약 vo의 값이 true라면, 기존에 true값이 있는지 없는지 확인해서 기존의 값을 업데이트해줘야함
		if(vo.getPop_use().equals("true")) {
			PopupVO tvo = popupDao.getMainPopup();
			if(tvo.getPop_no() == 0) {
				System.out.println("기존에 활성화된 팝업이 없습니다.");
				// 팝업트루가 없으면 insert 진행
				popupDao.insertPopup(vo);
			}else {
				// 팝업트루가 있으면 해당 팝업을 비활성화시킴
				System.out.println("기존에 활성화된 팝업이 있습니다");
				popupDao.setPopupFalse(tvo);
				// 트루인 새 팝업을 적용시킴
				popupDao.insertPopup(vo);
			}
		}else {
			// 새로 만든 팝업의 상태가 false라면 insert 진행
			popupDao.insertPopup(vo);
		}
	}

	@Override
	public PopupVO adPopupDetail(PopupVO vo) {
		return popupDao.getPopup(vo);
	}

	@Override
	public void adPopupUpdate(PopupVO vo) {
		// 만약 vo의 값이 true라면, 기존에 true값이 있는지 없는지 확인해서 기존의 값을 업데이트해줘야함
		if(vo.getPop_use().equals("true")) {
			PopupVO tvo = popupDao.getMainPopup();
			if(tvo.getPop_no() == 0) {
				System.out.println("기존에 활성화된 팝업이 없습니다.");
				// 팝업트루가 없으면 insert 진행
				popupDao.updatePopup(vo);
			}else {
				// 팝업트루가 있으면 
				System.out.println("기존에 활성화된 팝업이 있습니다");
				// 그 트루인 팝업이 수정하는 대상이면
				if(tvo.getPop_no() == vo.getPop_no()) {
					// 트루인 새 팝업을 적용시킴
					popupDao.updatePopup(vo);
				}else {
					// 트루인 팝업이 수정하는 대상이 아니면
					popupDao.setPopupFalse(tvo);
					// 트루인 새 팝업을 적용시킴
					popupDao.updatePopup(vo);
				}
			}
		}else {
			// 새로 만든 팝업의 상태가 false라면 insert 진행
			popupDao.updatePopup(vo);
		}
	}
	// 이벤트 삭제
	@Override
	public void adDeleteEvent(EventVO vo) {
		eventDao.deleteEvent(vo);
	}

	// 이벤트 추가하기
	@Override
	public void adEventInsert(EventVO vo) {
		eventDao.insertEvent(vo);
	}

	@Override
	public EventVO adGetEvent(EventVO vo) {
		return eventDao.getEvent(vo);
	}

	@Override
	public void adEventUpdate(EventVO vo) {
		eventDao.updateEvent(vo);
		
	}



}
