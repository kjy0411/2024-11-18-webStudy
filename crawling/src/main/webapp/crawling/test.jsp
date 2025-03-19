<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
    var c = $('.list_item .company_nm .str_tit').length; // +1 제거 (올바른 개수 유지)
    console.log("Total count:", c);

    function sendAjaxRequest(i) {
        if (i >= c) {
            console.log("All requests completed.");
            return;
        }

        let key = $('.interested_corp:eq('+i+')').attr('csn'); // 선택자 수정
        console.log("Requesting key:", key, "Index:", i);

        if (key) { // key가 존재할 때만 요청
            $.ajax({
                type: 'post',
                url: '../crawling/crawl.do',
                data: {"key": key, "i": i},
                success: function(response) {
                	
                }
            });
        } else {
            console.warn("Skipping index", i, "- key not found.");
        }

        setTimeout(function(){
            sendAjaxRequest(i + 1);
        }, 3000); // 3초 간격으로 실행
    }

    sendAjaxRequest(0); // 첫 번째 호출
});
</script>
</head>
<body>

<div class="list-container">

        <div id="rec-50034014" class="list_item recruit_visited">
        <div class="box_item">
            
                            <div class="col ranking_info">
                    <span class="rank_change recommond">
                        <span class="blind">추천</span>
                    </span>
                </div>
            
                            <div class="col company_nm">
                                            <span class="str_tit">(주)우진플라임</span>
                                        <button type="button" csn="RWUwM1FvUUI4L3ptclpVT3dMakV5Zz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50034014" onclick="s_trackApply(this, 'hot100', 'SRI_050_TOP100_PAY_RCT');" title="㈜우진플라임 부문별 인재채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50034014&amp;referNonce=eb5ed6406f20e21e9e2f" target="_blank" onmousedown="try{loggingRecommendUrl(this, 'http://rcmd-log.saramin.co.kr:9020/so-logging/log/client?custId=19518050&amp;pcId=17398669635497236620782&amp;nonce=eb5ed6406f20e21e9e2f&amp;dpId=SRI_050_TOP100_PAY_RCT&amp;scnId=829&amp;tgId=0&amp;itemSetId=1&amp;itemValue=50034014&amp;click=1', ''); } catch(e){}"><span>㈜우진플라임 부문별 인재채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50034014" imgtype="button" class="spr_scrap btn_scrap scrap-50034014 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>게임개발</span><span>데이터분석가</span><span>백엔드/서버개발</span><span>앱개발</span><span>웹개발</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울전체 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 경력 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50034014','','t_category=hot100&amp;t_content=SRI_050_TOP100_PAY_RCT&amp;dpId=SRI_050_TOP100_PAY_RCT&amp;referNonce=eb5ed6406f20e21e9e2f&amp;t_scnid=829', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.19(수)</span>
                    <span class="deadlines">20일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-46858808" class="list_item recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">1</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=TFkvTjUrQlBaaHNQNTJKU3FIeVdHZz09" class="str_tit" target="_blank">
                            (주)엘티엔터테인먼트                        </a>
                                        <button type="button" csn="TFkvTjUrQlBaaHNQNTJKU3FIeVdHZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="LT그룹">LT그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_46858808" onclick="s_trackApply(this, 'hot100', 'job');" title="제주 드림타워 복합리조트 [카지노&amp;amp;호텔] 대규모 신입 공개 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=46858808" target="_blank" onmousedown=""><span>제주 드림타워 복합리조트 [카지노&amp;호텔] 대규모 신입 공개 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="46858808" imgtype="button" class="spr_scrap btn_scrap scrap-46858808 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>출납</span><span>사무직</span><span>문서작성</span><span>비품관리</span><span>사무보조</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                미디어·문화·스포츠 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">제주 제주시 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('46858808','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.31(월)</span>
                    <span class="deadlines">500일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50155015" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">2</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Vkh0NER2VGx3WUI5Z3pUZmZqZHVEdz09" class="str_tit" target="_blank">
                            경기도                        </a>
                                        <button type="button" csn="Vkh0NER2VGx3WUI5Z3pUZmZqZHVEdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                <span class="info_stock" title="공사·공기업">공사·공기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50155015" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 상반기 경기도 공공기관 통합채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50155015" target="_blank" onmousedown=""><span>2025년 상반기 경기도 공공기관 통합채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50155015" imgtype="button" class="spr_scrap btn_scrap scrap-50155015 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>정보통신</span><span>전산회계</span><span>관리회계</span><span>기업회계</span><span>외부감사</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                건설·건축 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기전체</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50155015" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-7</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50124570" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">3</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=c2lFUFRSajU5SVhHa1laVWNOUVVldz09" class="str_tit" target="_blank">
                            지에스건설(주)                        </a>
                                        <button type="button" csn="c2lFUFRSajU5SVhHa1laVWNOUVVldz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="지에스그룹">지에스그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50124570" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 상반기 GS건설 신입사원 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124570" target="_blank" onmousedown=""><span>2025년 상반기 GS건설 신입사원 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50124570" imgtype="button" class="spr_scrap btn_scrap scrap-50124570 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>데이터분석가</span><span>빅데이터</span><span>원가관리</span><span>자금관리</span><span>재무기획</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                영업·판매·무역 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 종로구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124570" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~03.23(일)</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50167675" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">4</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ckxLKzZwTlBnZTFleFRSUTJQR3ZRZz09" class="str_tit" target="_blank">
                            SK텔레콤(주)                        </a>
                                        <button type="button" csn="ckxLKzZwTlBnZTFleFRSUTJQR3ZRZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="에스케이그룹">에스케이그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50167675" onclick="s_trackApply(this, 'hot100', 'job');" title="SK텔레콤 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50167675" target="_blank" onmousedown=""><span>SK텔레콤 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50167675" imgtype="button" class="spr_scrap btn_scrap scrap-50167675 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>기술지원</span><span>데이터분석가</span><span>데이터엔지니어</span><span>IT컨설팅</span><span>SE(시스템엔지니어)</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                건설·건축 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 중구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50167675" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50107625" class="list_item recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">5</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=L2g0RlJwdnVxM3RwRlNzZm5pdnhVZz09" class="str_tit" target="_blank">
                            퍼시스그룹                        </a>
                                        <button type="button" csn="L2g0RlJwdnVxM3RwRlNzZm5pdnhVZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50107625" onclick="s_trackApply(this, 'hot100', 'job');" title="2025 상반기 신입사원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50107625" target="_blank" onmousedown=""><span>2025 상반기 신입사원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50107625" imgtype="button" class="spr_scrap btn_scrap scrap-50107625 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>프론트엔드</span><span>IR/공시</span><span>KICPA</span><span>더존</span><span>4대보험</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                IT개발·데이터 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울전체 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50107625" target="_blank" title="접수방법 확인" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_apply_confirm">접수방법 확인</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50156838" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">6</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=bkxZV3RnMktrZ1RGMmJTUTQ1ZmIzZz09" class="str_tit" target="_blank">
                            서울대학교병원                        </a>
                                        <button type="button" csn="bkxZV3RnMktrZ1RGMmJTUTQ1ZmIzZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="서울대학교병원그룹">서울대학교병원그룹</span>
                                                                <span class="info_stock" title="공사·공기업">공사·공기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50156838" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년도 서울대학교 병원 상반기 블라인드 신규 직원 채용(장애인 특별우대)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50156838&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50156838, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>2025년도 서울대학교 병원 상반기 블라인드 신규 직원 채용(장애인 특별우대)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50156838" imgtype="button" class="spr_scrap btn_scrap scrap-50156838 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>유지보수</span><span>경리</span><span>경리사무원</span><span>세무사</span><span>전산회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                건설·건축 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 종로구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50156838" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~03.19(수)</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50108838" class="list_item recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">7</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=QTRhcS8xeTVMaTBiNjhsOTlsUkFPUT09" class="str_tit" target="_blank">
                            (주)쎄트렉아이                        </a>
                                        <button type="button" csn="QTRhcS8xeTVMaTBiNjhsOTlsUkFPUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="쎄트렉아이그룹">쎄트렉아이그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50108838" onclick="s_trackApply(this, 'hot100', 'job');" title="쎄트렉아이 2025 상반기 신입 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50108838" target="_blank" onmousedown=""><span>쎄트렉아이 2025 상반기 신입 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50108838" imgtype="button" class="spr_scrap btn_scrap scrap-50108838 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>데이터엔지니어</span><span>백엔드/서버개발</span><span>웹개발</span><span>유지보수</span><span>정보보안</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                건설·건축 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대전 유성구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 인턴직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50108838" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50085258" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">8</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RzR5SVBIZU9UdTR1VXlNb29iVkFEZz09" class="str_tit" target="_blank">
                            (주)서원유통                        </a>
                                        <button type="button" csn="RzR5SVBIZU9UdTR1VXlNb29iVkFEZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="서원홀딩스그룹">서원홀딩스그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50085258" onclick="s_trackApply(this, 'hot100', 'job');" title="탑마트 인턴사원 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50085258" target="_blank" onmousedown=""><span>탑마트 인턴사원 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50085258" imgtype="button" class="spr_scrap btn_scrap scrap-50085258 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>유지보수</span><span>경리사무원</span><span>사무직</span><span>사무보조</span><span>사무행정</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                구매·자재·물류 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 북구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 인턴직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50085258" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~03.27(목)</span>
                    <span class="deadlines">13일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50109557" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">9</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=a0xzcjhDdVA1WHRYRUl5WGVKdkpWQT09" class="str_tit" target="_blank">
                            (주)현대퓨처넷                        </a>
                                        <button type="button" csn="a0xzcjhDdVA1WHRYRUl5WGVKdkpWQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="현대백화점그룹">현대백화점그룹</span>
                                                                <span class="info_stock" title="코스피">코스피</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50109557" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 현대퓨처넷 신입사원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50109557" target="_blank" onmousedown=""><span>2025년 현대퓨처넷 신입사원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50109557" imgtype="button" class="spr_scrap btn_scrap scrap-50109557 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>법인결산</span><span>법인세신고</span><span>부가세신고</span><span>세무회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50109557" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50153642" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">10</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=M002NXJXZEpOcDVvNWFmMWdxZTVXUT09" class="str_tit" target="_blank">
                            현대자동차(주)                        </a>
                                        <button type="button" csn="M002NXJXZEpOcDVvNWFmMWdxZTVXUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="현대자동차그룹">현대자동차그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50153642" onclick="s_trackApply(this, 'hot100', 'job');" title="[경영지원] 3월 신입" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50153642" target="_blank" onmousedown=""><span>[경영지원] 3월 신입</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50153642" imgtype="button" class="spr_scrap btn_scrap scrap-50153642 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>손익관리</span><span>예산관리</span><span>자산관리</span><span>시설관리</span><span>ER(노무관리)</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                마케팅·홍보·조사 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50153642" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49692741" class="list_item effect recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">11</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=eGpRQ1hPa1hGZit2OWJVcCtrb1JUdz09" class="str_tit" target="_blank">
                            (주)대일시스템                        </a>
                                        <button type="button" csn="eGpRQ1hPa1hGZit2OWJVcCtrb1JUdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49692741" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 각 부문 상반기 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49692741&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(49692741, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>2025년 각 부문 상반기 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49692741" imgtype="button" class="spr_scrap btn_scrap scrap-49692741 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>기술지원</span><span>유지보수</span><span>알고리즘</span><span>정보통신</span><span>S/W</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                생산 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 용인시 처인구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49692741','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-3</span>
                    <span class="deadlines">67일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50004513" class="list_item recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">12</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=bkdzZGt6VGsvZzBqTGR3aXkzUkc0UT09" class="str_tit" target="_blank">
                            (주)비엠씨                        </a>
                                        <button type="button" csn="bkdzZGt6VGsvZzBqTGR3aXkzUkc0UT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="비엠씨홀딩스그룹">비엠씨홀딩스그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50004513" onclick="s_trackApply(this, 'hot100', 'job');" title="BMC 각 부문별 신입/경력직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50004513" target="_blank" onmousedown=""><span>BMC 각 부문별 신입/경력직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50004513" imgtype="button" class="spr_scrap btn_scrap scrap-50004513 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>앱개발</span><span>웹개발</span><span>SAP</span><span>ABAP</span><span>Java</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                IT개발·데이터 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 안성시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50004513','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">24일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50092013" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">13</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZXdHbXlQQ09SbEpFLzVwM1QzRlpVZz09" class="str_tit" target="_blank">
                            (주)동국                        </a>
                                        <button type="button" csn="ZXdHbXlQQ09SbEpFLzVwM1QzRlpVZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50092013" onclick="s_trackApply(this, 'hot100', 'job');" title="각 부문 정규직 직원 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50092013&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50092013, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>각 부문 정규직 직원 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50092013" imgtype="button" class="spr_scrap btn_scrap scrap-50092013 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>관리회계</span><span>연말정산</span><span>원가관리</span><span>원가회계</span><span>재무회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                인사·노무·HRD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 화성시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50092013','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">13일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50124417" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">14</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=VW5EZUxQU0hKN2JPTVRpZlY1TVFGZz09" class="str_tit" target="_blank">
                            (주)중헌제약                        </a>
                                        <button type="button" csn="VW5EZUxQU0hKN2JPTVRpZlY1TVFGZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50124417" onclick="s_trackApply(this, 'hot100', 'job');" title="중헌제약 각 부문 신입/경력 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124417" target="_blank" onmousedown=""><span>중헌제약 각 부문 신입/경력 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50124417" imgtype="button" class="spr_scrap btn_scrap scrap-50124417 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경영지원</span><span>제약QA</span><span>RA</span><span>영업마케팅</span><span>제약영업</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                디자인 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50124417','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50121745" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">15</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=SWJsSHc2Q1FBTmhJdnRWNDhYZldOUT09" class="str_tit" target="_blank">
                            에스앤에스비(주)                        </a>
                                        <button type="button" csn="SWJsSHc2Q1FBTmhJdnRWNDhYZldOUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50121745" onclick="s_trackApply(this, 'hot100', 'job');" title="[연4500만] 현대글로비스 팀 사무 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50121745" target="_blank" onmousedown=""><span>[연4500만] 현대글로비스 팀 사무 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50121745" imgtype="button" class="spr_scrap btn_scrap scrap-50121745 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                총무·법무·사무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50121745','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">7시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49831649" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">16</strong>
                    <span class="rank_change up">
                        <span class="num">3</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <span class="str_tit">(주)파이브스페이스</span>
                                        <button type="button" csn="SW1QTkx2MC9lMUVCRnZQRVFZL2xIdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49831649" onclick="s_trackApply(this, 'hot100', 'job');" title="[파이브스페이스] 각 부문별 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49831649" target="_blank" onmousedown=""><span>[파이브스페이스] 각 부문별 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49831649" imgtype="button" class="spr_scrap btn_scrap scrap-49831649 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>ERP</span><span>관리회계</span><span>기업회계</span><span>법인세신고</span><span>세무기장</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49831649','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.23(일)</span>
                    <span class="deadlines">45일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50157341" class="list_item effect recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">17</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=aFBKN0JFMG9Sa2RxMG01Q3VQMDVtZz09" class="str_tit" target="_blank">
                            엘트로닉퓨얼테크코리아(유)                        </a>
                                        <button type="button" csn="aFBKN0JFMG9Sa2RxMG01Q3VQMDVtZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                <span class="info_stock" title="외국계">외국계</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50157341" onclick="s_trackApply(this, 'hot100', 'job');" title="[외국계] 각 부문별 공개 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50157341&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50157341, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>[외국계] 각 부문별 공개 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50157341" imgtype="button" class="spr_scrap btn_scrap scrap-50157341 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>데이터엔지니어</span><span>SE(시스템엔지니어)</span><span>ERP</span><span>감사</span><span>내부감사</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                운전·운송·배송 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경남 양산시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50157341','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.04(금)</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50183870" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">18</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dWlEQlRUd0pyNDk5WC9iVlAvRUYvUT09" class="str_tit" target="_blank">
                            한세실업(주)                        </a>
                                        <button type="button" csn="dWlEQlRUd0pyNDk5WC9iVlAvRUYvUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="한세예스24홀딩스그룹">한세예스24홀딩스그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50183870" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 상반기 신입사원 공개채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50183870" target="_blank" onmousedown=""><span>2025년 상반기 신입사원 공개채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50183870" imgtype="button" class="spr_scrap btn_scrap scrap-50183870 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>관리회계</span><span>급여(Payroll)</span><span>기업회계</span><span>연결회계</span><span>원가회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50183870" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~03.24(월)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50018044" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">19</strong>
                    <span class="rank_change up">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=OG1rbldYLzlRTUZBTithTTRxNkNwQT09" class="str_tit" target="_blank">
                            (주)지엘                        </a>
                                        <button type="button" csn="OG1rbldYLzlRTUZBTithTTRxNkNwQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50018044" onclick="s_trackApply(this, 'hot100', 'job');" title="[삼성전자 남서울물류센터] 사무직 정규직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50018044&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50018044, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>[삼성전자 남서울물류센터] 사무직 정규직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50018044" imgtype="button" class="spr_scrap btn_scrap scrap-50018044 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>더존</span><span>4대보험</span><span>급여(Payroll)</span><span>전표입력</span><span>종합소득세</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                인사·노무·HRD 조회 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 광주시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50018044','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">21일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50151600" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">20</strong>
                    <span class="rank_change up">
                        <span class="num">1</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <span class="str_tit">데이즈온(주)</span>
                                        <button type="button" csn="QlVIcVFFUjlHbnd5a3l0SHRTS2JYdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50151600" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 데이즈온 상반기 경영지원 신입사원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50151600" target="_blank" onmousedown=""><span>2025년 데이즈온 상반기 경영지원 신입사원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50151600" imgtype="button" class="spr_scrap btn_scrap scrap-50151600 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>더존</span><span>계산서발행</span><span>관리회계</span><span>급여(Payroll)</span><span>기업회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                인사·노무·HRD 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50151600','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-5</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50018917" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">21</strong>
                    <span class="rank_change up">
                        <span class="num">6</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=cHhka2hUUHBrMno2emV4Vmd5Q1Rndz09" class="str_tit" target="_blank">
                            (주)삼보첨단소재                        </a>
                                        <button type="button" csn="cHhka2hUUHBrMno2emV4Vmd5Q1Rndz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="삼보첨단소재그룹">삼보첨단소재그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50018917" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)삼보첨단소재 회계팀 경력직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50018917" target="_blank" onmousedown=""><span>(주)삼보첨단소재 회계팀 경력직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50018917" imgtype="button" class="spr_scrap btn_scrap scrap-50018917 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 중구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50018917','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.19(수)</span>
                    <span class="deadlines">21일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50185361" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">22</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=TUNMbHRYR1JwMmdJRkEvbCtHRkN0QT09" class="str_tit" target="_blank">
                            (주)디비에이컨설팅                        </a>
                                        <button type="button" csn="TUNMbHRYR1JwMmdJRkEvbCtHRkN0QT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50185361" onclick="s_trackApply(this, 'hot100', 'job');" title="[울산/성과급] 현대자동차 일반사무 채용 - 4월초입사" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50185361" target="_blank" onmousedown=""><span>[울산/성과급] 현대자동차 일반사무 채용 - 4월초입사</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50185361" imgtype="button" class="spr_scrap btn_scrap scrap-50185361 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>전표입력</span><span>ERP</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">울산 북구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50185361','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.28(금)</span>
                    <span class="deadlines">4시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50179721" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">23</strong>
                    <span class="rank_change up">
                        <span class="num">6</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=WkgzeFY0dHlqUHArZ0ZBYVZoZVUwUT09" class="str_tit" target="_blank">
                            에스케이케미칼(주)                        </a>
                                        <button type="button" csn="WkgzeFY0dHlqUHArZ0ZBYVZoZVUwUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="에스케이그룹">에스케이그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50179721" onclick="s_trackApply(this, 'hot100', 'job');" title="[SK] SK케미칼 25년 마케팅/지원 신입구성원 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50179721" target="_blank" onmousedown=""><span>[SK] SK케미칼 25년 마케팅/지원 신입구성원 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50179721" imgtype="button" class="spr_scrap btn_scrap scrap-50179721 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>IR/공시</span><span>관리회계</span><span>손익관리</span><span>예산관리</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                마케팅·홍보·조사 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 성남시 분당구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50179721" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50166522" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">24</strong>
                    <span class="rank_change up">
                        <span class="num">19</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=aytxc09VNTJoWEFNbTRBUjRpSHYwZz09" class="str_tit" target="_blank">
                            (주)씨아이템프러리                        </a>
                                        <button type="button" csn="aytxc09VNTJoWEFNbTRBUjRpSHYwZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50166522" onclick="s_trackApply(this, 'hot100', 'job');" title="현대카드 카드정산팀 사무직 채용 정산비용/ 비용지급/ 자료추출" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50166522" target="_blank" onmousedown=""><span>현대카드 카드정산팀 사무직 채용 정산비용/ 비용지급/ 자료추출</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50166522" imgtype="button" class="spr_scrap btn_scrap scrap-50166522 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>데이터분석가</span><span>데이터시각화</span><span>빅데이터</span><span>경리</span><span>경리사무원</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                IT개발·데이터 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50166522','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.05(토)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50127239" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">25</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=WDdzRkc3N3lkWGluRVd3UmJ2RjRVQT09" class="str_tit" target="_blank">
                            (주)중앙                        </a>
                                        <button type="button" csn="WDdzRkc3N3lkWGluRVd3UmJ2RjRVQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50127239" onclick="s_trackApply(this, 'hot100', 'job');" title="중앙법인 영업부 신입사원 공개채용(업계최대 인센티브)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50127239&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50127239, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>중앙법인 영업부 신입사원 공개채용(업계최대 인센티브)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50127239" imgtype="button" class="spr_scrap btn_scrap scrap-50127239 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>세무컨설팅</span><span>기술영업</span><span>영업관리</span><span>영업지원</span><span>영업직</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                금융·보험 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 부천시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 위촉직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50127239','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.31(월)</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50091099" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">26</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=VVorZGNlSC9yLzQzTEVUUDhrckFiZz09" class="str_tit" target="_blank">
                            (주)펨트론                        </a>
                                        <button type="button" csn="VVorZGNlSC9yLzQzTEVUUDhrckFiZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="덕인그룹">덕인그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50091099" onclick="s_trackApply(this, 'hot100', 'job');" title="부서별 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50091099&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50091099, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>부서별 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50091099" imgtype="button" class="spr_scrap btn_scrap scrap-50091099 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>게임개발</span><span>기술지원</span><span>백엔드/서버개발</span><span>앱개발</span><span>웹개발</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 금천구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50091099','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">13일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50001100" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">27</strong>
                    <span class="rank_change up">
                        <span class="num">28</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=SUsrR05vVkQrQUI1SFRpTEQvNi9UQT09" class="str_tit" target="_blank">
                            (주)오씨엘                        </a>
                                        <button type="button" csn="SUsrR05vVkQrQUI1SFRpTEQvNi9UQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50001100" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)오씨엘 총무과 사무직 채용 (회계/경리/사무보조/경영지원)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50001100" target="_blank" onmousedown=""><span>(주)오씨엘 총무과 사무직 채용 (회계/경리/사무보조/경영지원)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50001100" imgtype="button" class="spr_scrap btn_scrap scrap-50001100 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>사무직</span><span>총무</span><span>문서작성</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50001100','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">24일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49690234" class="list_item effect recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">28</strong>
                    <span class="rank_change up">
                        <span class="num">3</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=WkUwUldNNUdqS08vTnRSVEU4RERtZz09" class="str_tit" target="_blank">
                            (주)트루빈스                        </a>
                                        <button type="button" csn="WkUwUldNNUdqS08vTnRSVEU4RERtZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49690234" onclick="s_trackApply(this, 'hot100', 'job');" title="2배씩 성장, 업계 최대 대우(PD·작가·AE·디자이너·경영지원)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49690234&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(49690234, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>2배씩 성장, 업계 최대 대우(PD·작가·AE·디자이너·경영지원)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49690234" imgtype="button" class="spr_scrap btn_scrap scrap-49690234 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>감사</span><span>경리</span><span>경리사무원</span><span>공인회계사</span><span>전산회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                미디어·문화·스포츠 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49690234','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-7</span>
                    <span class="deadlines">67일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49779176" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">29</strong>
                    <span class="rank_change up">
                        <span class="num">5</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dUw4QldKWGEwaC9Wc3pxVlU5QmtYdz09" class="str_tit" target="_blank">
                            탑손해사정(주)                        </a>
                                        <button type="button" csn="dUw4QldKWGEwaC9Wc3pxVlU5QmtYdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49779176" onclick="s_trackApply(this, 'hot100', 'job');" title="[메리츠 현대 한화 KB DB손해보험] 서면심사 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49779176&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(49779176, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>[메리츠 현대 한화 KB DB손해보험] 서면심사 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49779176" imgtype="button" class="spr_scrap btn_scrap scrap-49779176 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>사무직</span><span>문서작성</span><span>사무보조</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                의료 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 마포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49779176','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-7</span>
                    <span class="deadlines">54일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50126893" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">30</strong>
                    <span class="rank_change up">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=eGFxSmRCQVhkRVkyQ0RCTVBSUExOQT09" class="str_tit" target="_blank">
                            (주)아머스포츠코리아                        </a>
                                        <button type="button" csn="eGFxSmRCQVhkRVkyQ0RCTVBSUExOQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                <span class="info_stock" title="외국계">외국계</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50126893" onclick="s_trackApply(this, 'hot100', 'job');" title="각 직무별 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50126893&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50126893, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>각 직무별 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50126893" imgtype="button" class="spr_scrap btn_scrap scrap-50126893 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>기술지원</span><span>SE(시스템엔지니어)</span><span>ERP</span><span>SAP</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50126893','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.23(일)</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49963648" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">31</strong>
                    <span class="rank_change up">
                        <span class="num">16</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49963648" onclick="s_trackApply(this, 'hot100', 'job');" title="[중견/코스피] 재무/회계팀 채용 (신입가능)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49963648" target="_blank" onmousedown=""><span>[중견/코스피] 재무/회계팀 채용 (신입가능)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49963648" imgtype="button" class="spr_scrap btn_scrap scrap-49963648 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>세무사</span><span>전산회계</span><span>회계사</span><span>더존</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 용인시 기흥구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49963648','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50191042" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">32</strong>
                    <span class="rank_change down">
                        <span class="num">2</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=UVNQb1F1bFlFdW1uNUVab0JNWlc4dz09" class="str_tit" target="_blank">
                            (주)시경                        </a>
                                        <button type="button" csn="UVNQb1F1bFlFdW1uNUVab0JNWlc4dz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50191042" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)경영지원팀 재무/총무/행정관리 직원 채용 공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50191042" target="_blank" onmousedown=""><span>(주)경영지원팀 재무/총무/행정관리 직원 채용 공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50191042" imgtype="button" class="spr_scrap btn_scrap scrap-50191042 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>총무</span><span>경영지원</span><span>재무</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대구 수성구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50191042','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.23(일)</span>
                    <span class="deadlines">2일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50076136" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">33</strong>
                    <span class="rank_change up">
                        <span class="num">16</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ejdHVVhiNHY3Q21ucDVFR3lPM3dMZz09" class="str_tit" target="_blank">
                            (주)한독모터스                        </a>
                                        <button type="button" csn="ejdHVVhiNHY3Q21ucDVFR3lPM3dMZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50076136" onclick="s_trackApply(this, 'hot100', 'job');" title="[BMW 한독모터스] 본사 각 부문 정규직 및 계약직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50076136" target="_blank" onmousedown=""><span>[BMW 한독모터스] 본사 각 부문 정규직 및 계약직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50076136" imgtype="button" class="spr_scrap btn_scrap scrap-50076136 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>관리회계</span><span>기업회계</span><span>세무회계</span><span>재무기획</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50076136','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">14일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50121916" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">34</strong>
                    <span class="rank_change up">
                        <span class="num">11</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" class="str_tit" target="_blank">
                            (주)휴먼코아                        </a>
                                        <button type="button" csn="S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50121916" onclick="s_trackApply(this, 'hot100', 'job');" title="[연4,500만/대기업] 현대글로비스 사무직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50121916" target="_blank" onmousedown=""><span>[연4,500만/대기업] 현대글로비스 사무직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50121916" imgtype="button" class="spr_scrap btn_scrap scrap-50121916 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>계산서발행</span><span>법인결산</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                총무·법무·사무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50121916','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50166840" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">35</strong>
                    <span class="rank_change up">
                        <span class="num">9</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dlpzN1haQlEyOHBLejRrOHgxTlBFZz09" class="str_tit" target="_blank">
                            (주)올가홀푸드                        </a>
                                        <button type="button" csn="dlpzN1haQlEyOHBLejRrOHgxTlBFZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="풀무원그룹">풀무원그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50166840" onclick="s_trackApply(this, 'hot100', 'job');" title="[풀무원] ORGA 상품지원팀(신입)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50166840" target="_blank" onmousedown=""><span>[풀무원] ORGA 상품지원팀(신입)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50166840" imgtype="button" class="spr_scrap btn_scrap scrap-50166840 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>계산서발행</span><span>법인결산</span><span>전표입력</span><span>사무직</span><span>문서작성</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 송파구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50166840','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50073468" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">36</strong>
                    <span class="rank_change up">
                        <span class="num">30</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=OGRFT09wYm5GMzUxTDFselB3UmJiZz09" class="str_tit" target="_blank">
                            (주)엠제이코리아                        </a>
                                        <button type="button" csn="OGRFT09wYm5GMzUxTDFselB3UmJiZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50073468" onclick="s_trackApply(this, 'hot100', 'job');" title="[월230이상/초대졸/성과급] 중견기업 각 부서별 사무보조 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50073468" target="_blank" onmousedown=""><span>[월230이상/초대졸/성과급] 중견기업 각 부서별 사무보조 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50073468" imgtype="button" class="spr_scrap btn_scrap scrap-50073468 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>더존</span><span>계산서발행</span><span>예산관리</span><span>자금관리</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                기획·전략 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50073468','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.26(수)</span>
                    <span class="deadlines">14일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50015476" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">37</strong>
                    <span class="rank_change up">
                        <span class="num">3</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=cEVzU3JCMEhjUWhhY1FtRklSWTNpQT09" class="str_tit" target="_blank">
                            (주)코리아인                        </a>
                                        <button type="button" csn="cEVzU3JCMEhjUWhhY1FtRklSWTNpQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50015476" onclick="s_trackApply(this, 'hot100', 'job');" title="[분당 / 대기업그룹] 수출입 무역 및 회계담당 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50015476" target="_blank" onmousedown=""><span>[분당 / 대기업그룹] 수출입 무역 및 회계담당 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50015476" imgtype="button" class="spr_scrap btn_scrap scrap-50015476 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>SAP</span><span>전산회계</span><span>관리회계</span><span>기업회계</span><span>법인세신고</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                운전·운송·배송 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 성남시 분당구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직 외</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50015476','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.19(수)</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49963442" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">38</strong>
                    <span class="rank_change up">
                        <span class="num">3</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49963442" onclick="s_trackApply(this, 'hot100', 'job');" title="[중견/코스피/신입가능] 재무/회계팀 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49963442" target="_blank" onmousedown=""><span>[중견/코스피/신입가능] 재무/회계팀 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49963442" imgtype="button" class="spr_scrap btn_scrap scrap-49963442 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>세무사</span><span>전산회계</span><span>회계사</span><span>더존</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49963442','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50124531" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">39</strong>
                    <span class="rank_change up">
                        <span class="num">11</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=WFlnaWVCdWUxY0ZEbWsrVHF6NHZidz09" class="str_tit" target="_blank">
                            (사)한국평생교육협회                        </a>
                                        <button type="button" csn="WFlnaWVCdWUxY0ZEbWsrVHF6NHZidz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50124531" onclick="s_trackApply(this, 'hot100', 'job');" title="서울 매력일자리 세무/노무 실무자 인턴십 참여자 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124531" target="_blank" onmousedown=""><span>서울 매력일자리 세무/노무 실무자 인턴십 참여자 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50124531" imgtype="button" class="spr_scrap btn_scrap scrap-50124531 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>세무사</span><span>전산회계</span><span>회계사</span><span>더존</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울전체 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 인턴직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124531" target="_blank" title="접수방법 확인" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_apply_confirm">접수방법 확인</span></a>                <p class="support_detail">
                    <span class="date">~03.21(금)</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50191225" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">40</strong>
                    <span class="rank_change up">
                        <span class="num">46</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=YkRjQXNYVERYVjdDVXo1RWl5YkZidz09" class="str_tit" target="_blank">
                            ㈜대경티엠에스                        </a>
                                        <button type="button" csn="YkRjQXNYVERYVjdDVXo1RWl5YkZidz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="현대티엠에스그룹">현대티엠에스그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50191225" onclick="s_trackApply(this, 'hot100', 'job');" title="아웃소싱 급여업무(payroll) 실무자 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50191225" target="_blank" onmousedown=""><span>아웃소싱 급여업무(payroll) 실무자 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50191225" imgtype="button" class="spr_scrap btn_scrap scrap-50191225 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>4대보험</span><span>급여(Payroll)</span><span>연말정산</span><span>사무직</span><span>사무행정</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대구 중구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50191225','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.21(금)</span>
                    <span class="deadlines">2일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50041090" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">41</strong>
                    <span class="rank_change up">
                        <span class="num">23</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" class="str_tit" target="_blank">
                            (주)휴먼코아                        </a>
                                        <button type="button" csn="S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50041090" onclick="s_trackApply(this, 'hot100', 'job');" title="[연4,500만/대기업] 현대글로비스 포항영업소 사무직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50041090" target="_blank" onmousedown=""><span>[연4,500만/대기업] 현대글로비스 포항영업소 사무직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50041090" imgtype="button" class="spr_scrap btn_scrap scrap-50041090 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>관세사무원</span><span>전산회계</span><span>법인결산</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경북 포항시 남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50041090','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.21(금)</span>
                    <span class="deadlines">19일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50134954" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">42</strong>
                    <span class="rank_change down">
                        <span class="num">14</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=YTNCWG1veC9XY3AzaFNIKyt5RlE2dz09" class="str_tit" target="_blank">
                            (주)한화                        </a>
                                        <button type="button" csn="YTNCWG1veC9XY3AzaFNIKyt5RlE2dz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="한화그룹">한화그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50134954" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)한화 글로벌부문 사무직(영업지원) 기간제 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50134954" target="_blank" onmousedown=""><span>(주)한화 글로벌부문 사무직(영업지원) 기간제 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50134954" imgtype="button" class="spr_scrap btn_scrap scrap-50134954 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>사무직</span><span>문서작성</span><span>사무보조</span><span>Excel</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 부산진구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50134954','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date"><span class="dday">오늘마감</span></span>
                    <span class="deadlines">6일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49963703" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">43</strong>
                    <span class="rank_change up">
                        <span class="num">19</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RlFVWGI4R01kWGxtUitoUkV0QlQrZz09" class="str_tit" target="_blank">
                            동호에이치알(주)                        </a>
                                        <button type="button" csn="RlFVWGI4R01kWGxtUitoUkV0QlQrZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49963703" onclick="s_trackApply(this, 'hot100', 'job');" title="[합정역/연봉협의/高복지] 대기업 세아그룹 총무/회계 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49963703" target="_blank" onmousedown=""><span>[합정역/연봉협의/高복지] 대기업 세아그룹 총무/회계 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49963703" imgtype="button" class="spr_scrap btn_scrap scrap-49963703 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>유지보수</span><span>경리</span><span>경리사무원</span><span>전산회계</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                IT개발·데이터 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 마포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49963703','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">28일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50123124" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">44</strong>
                    <span class="rank_change up">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dy9KV1BRVVNRZ1ZDUFFvUnZQb2p5dz09" class="str_tit" target="_blank">
                            국민대학교                        </a>
                                        <button type="button" csn="dy9KV1BRVVNRZ1ZDUFFvUnZQb2p5dz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50123124" onclick="s_trackApply(this, 'hot100', 'job');" title="2025학년도 상반기 국민대학교 신입 직원(일반직) 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50123124&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50123124, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>2025학년도 상반기 국민대학교 신입 직원(일반직) 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50123124" imgtype="button" class="spr_scrap btn_scrap scrap-50123124 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>공인회계사</span><span>회계</span><span>재무</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성북구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50123124" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50139462" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">45</strong>
                    <span class="rank_change up">
                        <span class="num">27</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" class="str_tit" target="_blank">
                            (주)휴먼코아                        </a>
                                        <button type="button" csn="S3Z3QUJoQmhhQlZMQ3I0TWtzeHJEdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50139462" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)휴먼코아 본사 관리직 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50139462&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50139462, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>(주)휴먼코아 본사 관리직 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50139462" imgtype="button" class="spr_scrap btn_scrap scrap-50139462 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>4대보험</span><span>채용담당자</span><span>잡매니저</span><span>직업상담사</span><span>헤드헌터</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                인사·노무·HRD 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 송파구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50139462" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">6일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50081865" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">46</strong>
                    <span class="rank_change up">
                        <span class="num">11</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=UE92UzkwUlBaL3BzWWE5OVM5eHRqdz09" class="str_tit" target="_blank">
                            성보화학(주)                        </a>
                                        <button type="button" csn="UE92UzkwUlBaL3BzWWE5OVM5eHRqdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="성보화학그룹">성보화학그룹</span>
                                                                <span class="info_stock" title="코스피">코스피</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50081865" onclick="s_trackApply(this, 'hot100', 'job');" title="영업본부 충남영업팀(사무지원직)/경북북부영업팀(영업직) 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50081865&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50081865, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>영업본부 충남영업팀(사무지원직)/경북북부영업팀(영업직) 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50081865" imgtype="button" class="spr_scrap btn_scrap scrap-50081865 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>더존</span><span>관리회계</span><span>기업회계</span><span>법인결산</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                상품기획·MD 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대전 유성구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50081865','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date"><span class="dday">오늘마감</span></span>
                    <span class="deadlines">13일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50182364" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">47</strong>
                    <span class="rank_change down">
                        <span class="num">9</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dEVyWTNaT0ZDeWNUZzAwUjA1a1JPUT09" class="str_tit" target="_blank">
                            한화호텔앤드리조트(주)                        </a>
                                        <button type="button" csn="dEVyWTNaT0ZDeWNUZzAwUjA1a1JPUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="한화그룹">한화그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50182364" onclick="s_trackApply(this, 'hot100', 'job');" title="[한화H&amp;amp;R/에스테이트] 본사 총무파트 담당자 채용(신입)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50182364" target="_blank" onmousedown=""><span>[한화H&amp;R/에스테이트] 본사 총무파트 담당자 채용(신입)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50182364" imgtype="button" class="spr_scrap btn_scrap scrap-50182364 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전표입력</span><span>총무</span><span>비품관리</span><span>사무보조</span><span>사무행정</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                총무·법무·사무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/recruitin?rec_idx=50182364&amp;t_category=hot100&amp;t_content=job" target="_blank" title="입사지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_recruitin_apply">입사지원</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50180254" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">48</strong>
                    <span class="rank_change down">
                        <span class="num">13</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZmpQbHR3UXpYQ2hESEkwdVp6U2JPZz09" class="str_tit" target="_blank">
                            세영식품(주)                        </a>
                                        <button type="button" csn="ZmpQbHR3UXpYQ2hESEkwdVp6U2JPZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50180254" onclick="s_trackApply(this, 'hot100', 'job');" title="[본사] 2025년 사원 채용 (회계)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50180254" target="_blank" onmousedown=""><span>[본사] 2025년 사원 채용 (회계)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50180254" imgtype="button" class="spr_scrap btn_scrap scrap-50180254 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>법인결산</span><span>부가세신고</span><span>자금관리</span><span>재무회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 사상구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50180254','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-7</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50108527" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">49</strong>
                    <span class="rank_change up">
                        <span class="num">14</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=SzNJWjhrRXhBT2pCa0tOaWEvekpJZz09" class="str_tit" target="_blank">
                            (주)엘앤씨이에스                        </a>
                                        <button type="button" csn="SzNJWjhrRXhBT2pCa0tOaWEvekpJZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="엘앤씨바이오그룹">엘앤씨바이오그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50108527" onclick="s_trackApply(this, 'hot100', 'job');" title="[바이오] 경영관리 담당 직원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50108527" target="_blank" onmousedown=""><span>[바이오] 경영관리 담당 직원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50108527" imgtype="button" class="spr_scrap btn_scrap scrap-50108527 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 해운대구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50108527','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.29(토)</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50192322" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">50</strong>
                    <span class="rank_change new">
                        <span class="num">new</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=K3Q2NDI5SmFnVDg1VFZ3S0htMUw5Zz09" class="str_tit" target="_blank">
                            이데아텍(주)                        </a>
                                        <button type="button" csn="K3Q2NDI5SmFnVDg1VFZ3S0htMUw5Zz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50192322" onclick="s_trackApply(this, 'hot100', 'job');" title="HR총무/경영,영업지원  정규직 채용 (본사근무/정규직/경력무관)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50192322" target="_blank" onmousedown=""><span>HR총무/경영,영업지원  정규직 채용 (본사근무/정규직/경력무관)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50192322" imgtype="button" class="spr_scrap btn_scrap scrap-50192322 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>전산회계</span><span>세무회계</span><span>총무</span><span>교육행정</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50192322','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.21(금)</span>
                    <span class="deadlines">1일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49991880" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">51</strong>
                    <span class="rank_change up">
                        <span class="num">34</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=MUY0V0hHTDlFQlFLdU5MZitDZ1VXZz09" class="str_tit" target="_blank">
                            보보스링크(주)                        </a>
                                        <button type="button" csn="MUY0V0hHTDlFQlFLdU5MZitDZ1VXZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="상신브레이크그룹">상신브레이크그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49991880" onclick="s_trackApply(this, 'hot100', 'job');" title="[주5일/강남역] 아웃소싱 보보스링크 본사 인사총무직 / 회계직" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49991880" target="_blank" onmousedown=""><span>[주5일/강남역] 아웃소싱 보보스링크 본사 인사총무직 / 회계직</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49991880" imgtype="button" class="spr_scrap btn_scrap scrap-49991880 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>전산회계</span><span>더존</span><span>계산서발행</span><span>관리회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                총무·법무·사무 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49991880','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">25일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49859230" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">52</strong>
                    <span class="rank_change up">
                        <span class="num">8</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=TG1xSG5QeDNPS3lkeHFzRGZXZWlBZz09" class="str_tit" target="_blank">
                            한양대학교산학협력단                        </a>
                                        <button type="button" csn="TG1xSG5QeDNPS3lkeHFzRGZXZWlBZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49859230" onclick="s_trackApply(this, 'hot100', 'job');" title="[서울 공과대학] 한양대학교 계약직원 모집 공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49859230" target="_blank" onmousedown=""><span>[서울 공과대학] 한양대학교 계약직원 모집 공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49859230" imgtype="button" class="spr_scrap btn_scrap scrap-49859230 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리사무원</span><span>사무직</span><span>교육행정</span><span>사무보조</span><span>사무행정</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                공공·복지 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 성동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49859230','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.04(금)</span>
                    <span class="deadlines">35일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50085908" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">53</strong>
                    <span class="rank_change up">
                        <span class="num">17</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50085908" onclick="s_trackApply(this, 'hot100', 'job');" title="[판교역/대기업/중식제공] SK그룹 인사팀(HR) 사무지원" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50085908" target="_blank" onmousedown=""><span>[판교역/대기업/중식제공] SK그룹 인사팀(HR) 사무지원</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50085908" imgtype="button" class="spr_scrap btn_scrap scrap-50085908 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>더존</span><span>계산서발행</span><span>전표입력</span><span>ERP</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                인사·노무·HRD 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 성남시 분당구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50085908','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50170109" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">54</strong>
                    <span class="rank_change down">
                        <span class="num">17</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=d0dYMjU3OWtJWmlBR3pDNGZRZ2p5UT09" class="str_tit" target="_blank">
                            (주)디에스시스템                        </a>
                                        <button type="button" csn="d0dYMjU3OWtJWmlBR3pDNGZRZ2p5UT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50170109" onclick="s_trackApply(this, 'hot100', 'job');" title="경영지원부 팀원(경리/회계/사무행정 등) 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50170109" target="_blank" onmousedown=""><span>경영지원부 팀원(경리/회계/사무행정 등) 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50170109" imgtype="button" class="spr_scrap btn_scrap scrap-50170109 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>회계결산</span><span>회계법인</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대구 달서구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50170109','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.05(토)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50071038" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">55</strong>
                    <span class="rank_change up">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dmg5UmtoQW5NVWZhTU5EVXNJNU1UZz09" class="str_tit" target="_blank">
                            (주)아이피시                        </a>
                                        <button type="button" csn="dmg5UmtoQW5NVWZhTU5EVXNJNU1UZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50071038" onclick="s_trackApply(this, 'hot100', 'job');" title="[연세의료원] 신촌세브란스 사무행정&amp;amp;행정비서&amp;amp;팀비서 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50071038" target="_blank" onmousedown=""><span>[연세의료원] 신촌세브란스 사무행정&amp;행정비서&amp;팀비서 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50071038" imgtype="button" class="spr_scrap btn_scrap scrap-50071038 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                교육 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서대문구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50071038','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">상시채용</span>
                    <span class="deadlines">15일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50178120" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">56</strong>
                    <span class="rank_change down">
                        <span class="num">10</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RHlwVzVRNzNLZTVBaWdESXFzU1Q4UT09" class="str_tit" target="_blank">
                            (주)국보디자인                        </a>
                                        <button type="button" csn="RHlwVzVRNzNLZTVBaWdESXFzU1Q4UT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="국보디자인그룹">국보디자인그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50178120" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)국보디자인 회계,자금팀 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50178120&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50178120, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>(주)국보디자인 회계,자금팀 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50178120" imgtype="button" class="spr_scrap btn_scrap scrap-50178120 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>회계</span><span>재무</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 마포구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50178120','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~05.06(화)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50127236" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">57</strong>
                    <span class="rank_change up">
                        <span class="num">14</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=d0hwdlhXZGttSEJVNmxXbGhuKzZ1Zz09" class="str_tit" target="_blank">
                            (주)다원시스                        </a>
                                        <button type="button" csn="d0hwdlhXZGttSEJVNmxXbGhuKzZ1Zz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다원시스그룹">다원시스그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50127236" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 02월 다원시스 수시채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50127236" target="_blank" onmousedown=""><span>2025년 02월 다원시스 수시채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50127236" imgtype="button" class="spr_scrap btn_scrap scrap-50127236 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>감사</span><span>기술엔지니어</span><span>설계엔지니어</span><span>전장설계</span><span>안전보건관리자</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                총무·법무·사무 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 안산시 단원구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50127236" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~03.25(화)</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50110720" class="list_item effect recruit_visited">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">58</strong>
                    <span class="rank_change up">
                        <span class="num">3</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=YldxRGJiZk1JV1Z1YVkwSnRXVTZCZz09" class="str_tit" target="_blank">
                            (주)어댑트                        </a>
                                        <button type="button" csn="YldxRGJiZk1JV1Z1YVkwSnRXVTZCZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50110720" onclick="s_trackApply(this, 'hot100', 'job');" title="[어댑트] 푸드올로지/오브제/풀리 등 전 부문별 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50110720&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50110720, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>[어댑트] 푸드올로지/오브제/풀리 등 전 부문별 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50110720" imgtype="button" class="spr_scrap btn_scrap scrap-50110720 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>퍼블리셔</span><span>CSS</span><span>CSS3</span><span>HTML</span><span>Java</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                미디어·문화·스포츠 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50110720" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">~04.04(금)</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49957653" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">59</strong>
                    <span class="rank_change up">
                        <span class="num">25</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=NHV1TnpsMUNFRDlKTDY0b0dFL2RBZz09" class="str_tit" target="_blank">
                            (주)피앤제이인터내셔널                        </a>
                                        <button type="button" csn="NHV1TnpsMUNFRDlKTDY0b0dFL2RBZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49957653" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)피앤제이인터내셔널 경영지원팀 회계 직원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49957653" target="_blank" onmousedown=""><span>(주)피앤제이인터내셔널 경영지원팀 회계 직원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49957653" imgtype="button" class="spr_scrap btn_scrap scrap-49957653 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>4대보험</span><span>계산서발행</span><span>관리회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49957653','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date"><span class="dday">오늘마감</span></span>
                    <span class="deadlines">28일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50184267" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">60</strong>
                    <span class="rank_change up">
                        <span class="num">29</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dlJHdUZlRUdsWmxqczgvRUNCbnBGZz09" class="str_tit" target="_blank">
                            (주)이스트한                        </a>
                                        <button type="button" csn="dlJHdUZlRUdsWmxqczgvRUNCbnBGZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="이스트한그룹">이스트한그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50184267" onclick="s_trackApply(this, 'hot100', 'job');" title="회계/세무 신입사원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50184267" target="_blank" onmousedown=""><span>회계/세무 신입사원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50184267" imgtype="button" class="spr_scrap btn_scrap scrap-50184267 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>감사</span><span>4대보험</span><span>관리회계</span><span>기업회계</span><span>법인결산</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_reward"></use>
                                    </svg>
                                                                취업축하금                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50184267','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.06(일)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50166093" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">61</strong>
                    <span class="rank_change up">
                        <span class="num">51</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=VU5WdjR4dlViZmdWOFI2TXVaZ1Ywdz09" class="str_tit" target="_blank">
                            (주)삼화테크                        </a>
                                        <button type="button" csn="VU5WdjR4dlViZmdWOFI2TXVaZ1Ywdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50166093" onclick="s_trackApply(this, 'hot100', 'job');" title="제조업 구매,관리팀 신입 및 경력직 해외근무 가능자 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50166093" target="_blank" onmousedown=""><span>제조업 구매,관리팀 신입 및 경력직 해외근무 가능자 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50166093" imgtype="button" class="spr_scrap btn_scrap scrap-50166093 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>총무</span><span>경영지원</span><span>구매관리</span><span>회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">유럽 슬로바키아</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50166093','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.05(토)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50185304" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">62</strong>
                    <span class="rank_change down">
                        <span class="num">23</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=V2w1Si9mNmwvZ0VvOFo4MGFEWXdHUT09" class="str_tit" target="_blank">
                            홍익대학교산학협력단                        </a>
                                        <button type="button" csn="V2w1Si9mNmwvZ0VvOFo4MGFEWXdHUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50185304" onclick="s_trackApply(this, 'hot100', 'job');" title="홍익대학교 서울캠퍼스 산학협력단 직원(무기계약직) 채용 공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50185304" target="_blank" onmousedown=""><span>홍익대학교 서울캠퍼스 산학협력단 직원(무기계약직) 채용 공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50185304" imgtype="button" class="spr_scrap btn_scrap scrap-50185304 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>법인결산</span><span>출납</span><span>회계결산</span><span>ERP</span><span>자재관리</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 마포구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50185304','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-3</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50171484" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">63</strong>
                    <span class="rank_change up">
                        <span class="num">32</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RTExamFJYi9PTGhkRWFoR0J0NEZDQT09" class="str_tit" target="_blank">
                            주식회사 한상가득식품                        </a>
                                        <button type="button" csn="RTExamFJYi9PTGhkRWFoR0J0NEZDQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50171484" onclick="s_trackApply(this, 'hot100', 'job');" title="생산부(새벽,주간)/창고관리/배송직/물류관리 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50171484&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50171484, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>생산부(새벽,주간)/창고관리/배송직/물류관리 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50171484" imgtype="button" class="spr_scrap btn_scrap scrap-50171484 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>총무</span><span>비품관리</span><span>경영지원</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                운전·운송·배송 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 파주시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50171484','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.23(일)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50186095" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">64</strong>
                    <span class="rank_change down">
                        <span class="num">12</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=N1RVbHhSNnVENERyWEZSV0E3cW1nUT09" class="str_tit" target="_blank">
                            (주)이원시스템                        </a>
                                        <button type="button" csn="N1RVbHhSNnVENERyWEZSV0E3cW1nUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50186095" onclick="s_trackApply(this, 'hot100', 'job');" title="경영지원부 사무보조 직원 채용(꼭취업하실분만 지원가능)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50186095" target="_blank" onmousedown=""><span>경영지원부 사무보조 직원 채용(꼭취업하실분만 지원가능)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50186095" imgtype="button" class="spr_scrap btn_scrap scrap-50186095 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>물류관리</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경북 구미시</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50186095','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.06(일)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50164923" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">65</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Y1FkU2RqeHZzUE5tSHlYUWNPSThNdz09" class="str_tit" target="_blank">
                            에이지스비즈니스서포트(주)                        </a>
                                        <button type="button" csn="Y1FkU2RqeHZzUE5tSHlYUWNPSThNdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50164923" onclick="s_trackApply(this, 'hot100', 'job');" title="[부산] 에이지스 경리사무직사원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50164923" target="_blank" onmousedown=""><span>[부산] 에이지스 경리사무직사원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50164923" imgtype="button" class="spr_scrap btn_scrap scrap-50164923 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>법인결산</span><span>회계결산</span><span>사무직</span><span>사무보조</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 부산진구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50164923','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.31(월)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50188521" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">66</strong>
                    <span class="rank_change down">
                        <span class="num">8</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RjRsTjJGcm53Smczbys4WUxwMEhBZz09" class="str_tit" target="_blank">
                            (주)구일지엘에스                        </a>
                                        <button type="button" csn="RjRsTjJGcm53Smczbys4WUxwMEhBZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50188521" onclick="s_trackApply(this, 'hot100', 'job');" title="경영지원 사무직원 채용 (신입/경력 무관)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50188521" target="_blank" onmousedown=""><span>경영지원 사무직원 채용 (신입/경력 무관)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50188521" imgtype="button" class="spr_scrap btn_scrap scrap-50188521 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>총무</span><span>경영지원</span><span>회계</span><span>인사</span><span>재무</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50188521','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">2일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50172066" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">67</strong>
                    <span class="rank_change">
                        <span class="num">-</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=MGxXemhCMHlXRWNBeW9DdW51NDlFQT09" class="str_tit" target="_blank">
                            (사)대전산업단지관리공단                        </a>
                                        <button type="button" csn="MGxXemhCMHlXRWNBeW9DdW51NDlFQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50172066" onclick="s_trackApply(this, 'hot100', 'job');" title="대전산업단지관리공단 업무지원팀 직원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50172066" target="_blank" onmousedown=""><span>대전산업단지관리공단 업무지원팀 직원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50172066" imgtype="button" class="spr_scrap btn_scrap scrap-50172066 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>총무</span><span>사무행정</span><span>시설관리</span><span>사업기획</span><span>회계</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대전 대덕구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50172066','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-7</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50138414" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">68</strong>
                    <span class="rank_change up">
                        <span class="num">20</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=R2FEakZLK2xQODZ3cjRCb3VXaG9iZz09" class="str_tit" target="_blank">
                            SKC(주)                        </a>
                                        <button type="button" csn="R2FEakZLK2xQODZ3cjRCb3VXaG9iZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="에스케이그룹">에스케이그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50138414" onclick="s_trackApply(this, 'hot100', 'job');" title="25년 상반기 SKC 신입구성원 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50138414" target="_blank" onmousedown=""><span>25년 상반기 SKC 신입구성원 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50138414" imgtype="button" class="spr_scrap btn_scrap scrap-50138414 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>인프라</span><span>아키텍쳐</span><span>감사</span><span>IR/공시</span><span>자금관리</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울전체</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50138414" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">6일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50155261" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">69</strong>
                    <span class="rank_change down">
                        <span class="num">36</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZDk0VjFlSlpvSFdoUE9TL0dGL1pKQT09" class="str_tit" target="_blank">
                            (사)우리민족                        </a>
                                        <button type="button" csn="ZDk0VjFlSlpvSFdoUE9TL0dGL1pKQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50155261" onclick="s_trackApply(this, 'hot100', 'job');" title="광주통일관 사무직원 채용(신입/경력)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50155261" target="_blank" onmousedown=""><span>광주통일관 사무직원 채용(신입/경력)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50155261" imgtype="button" class="spr_scrap btn_scrap scrap-50155261 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>법인결산</span><span>회계결산</span><span>사무직</span><span>총무</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">광주 서구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50155261','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.18(화)</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50089065" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">70</strong>
                    <span class="rank_change up">
                        <span class="num">28</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=SEhKME5OVHRaRDN2N1d0QTB0eGMwZz09" class="str_tit" target="_blank">
                            템프인(주)                        </a>
                                        <button type="button" csn="SEhKME5OVHRaRDN2N1d0QTB0eGMwZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50089065" onclick="s_trackApply(this, 'hot100', 'job');" title="[부산/~3,400만/중식/신입o/통근버스]유명기업 생산팀 팀사무" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50089065" target="_blank" onmousedown=""><span>[부산/~3,400만/중식/신입o/통근버스]유명기업 생산팀 팀사무</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50089065" imgtype="button" class="spr_scrap btn_scrap scrap-50089065 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>더존</span><span>계산서발행</span><span>전표입력</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 금정구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50089065','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.27(목)</span>
                    <span class="deadlines">13일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50180564" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">71</strong>
                    <span class="rank_change down">
                        <span class="num">17</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Z1hLOXc3bmxVajFnZ1JRWkx0ZmVjdz09" class="str_tit" target="_blank">
                            (주)시아이티                        </a>
                                        <button type="button" csn="Z1hLOXc3bmxVajFnZ1JRWkx0ZmVjdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50180564" onclick="s_trackApply(this, 'hot100', 'job');" title="경리,총무,사무, 보조 채용(경력무관)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50180564" target="_blank" onmousedown=""><span>경리,총무,사무, 보조 채용(경력무관)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50180564" imgtype="button" class="spr_scrap btn_scrap scrap-50180564 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리사무원</span><span>사무보조</span><span>서류관리</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경남 창원시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50180564','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.06(일)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50171553" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">72</strong>
                    <span class="rank_change up">
                        <span class="num">7</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dWd0RlNOQlVkMlJiT2V5NndDNlMyQT09" class="str_tit" target="_blank">
                            (주)원이엔지                        </a>
                                        <button type="button" csn="dWd0RlNOQlVkMlJiT2V5NndDNlMyQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50171553" onclick="s_trackApply(this, 'hot100', 'job');" title="사무 경리 및 총무직 채용 공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50171553" target="_blank" onmousedown=""><span>사무 경리 및 총무직 채용 공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50171553" imgtype="button" class="spr_scrap btn_scrap scrap-50171553 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>더존</span><span>계산서발행</span><span>사무직</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 사상구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50171553','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.05(토)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50190322" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">73</strong>
                    <span class="rank_change down">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZzBsMEg0YlREblNzUFJTakduQW9Ldz09" class="str_tit" target="_blank">
                            신홍진기업(주)                        </a>
                                        <button type="button" csn="ZzBsMEg0YlREblNzUFJTakduQW9Ldz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50190322" onclick="s_trackApply(this, 'hot100', 'job');" title="성실한 관리사무직 모집합니다." href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50190322" target="_blank" onmousedown=""><span>성실한 관리사무직 모집합니다.</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50190322" imgtype="button" class="spr_scrap btn_scrap scrap-50190322 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>전산회계</span><span>계산서발행</span><span>사무직</span><span>전화응대</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 동대문구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50190322','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">2일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50186745" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">74</strong>
                    <span class="rank_change down">
                        <span class="num">21</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RlFuZzFFekZoaXc4c3dvTnBteDVzZz09" class="str_tit" target="_blank">
                            (주)참트레이딩                        </a>
                                        <button type="button" csn="RlFuZzFFekZoaXc4c3dvTnBteDVzZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="하림그룹">하림그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50186745" onclick="s_trackApply(this, 'hot100', 'job');" title="[하림그룹 계열사] 참트레이딩 경영지원본부 회계업무 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50186745" target="_blank" onmousedown=""><span>[하림그룹 계열사] 참트레이딩 경영지원본부 회계업무 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50186745" imgtype="button" class="spr_scrap btn_scrap scrap-50186745 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>관리회계</span><span>연결회계</span><span>재무회계</span><span>회계결산</span><span>회계</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50186745','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~05.06(화)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50077040" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">75</strong>
                    <span class="rank_change up">
                        <span class="num">29</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50077040" onclick="s_trackApply(this, 'hot100', 'job');" title="[SK에너지계열사/자체계약] 평택기지 사무서기 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50077040" target="_blank" onmousedown=""><span>[SK에너지계열사/자체계약] 평택기지 사무서기 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50077040" imgtype="button" class="spr_scrap btn_scrap scrap-50077040 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span><span>전표입력</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                공공·복지 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 평택시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50077040','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">14일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50170610" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">76</strong>
                    <span class="rank_change up">
                        <span class="num">29</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=RXkxVk9lTHBaWWd4ZGMyekdXQytBUT09" class="str_tit" target="_blank">
                            (주)농협파트너스                        </a>
                                        <button type="button" csn="RXkxVk9lTHBaWWd4ZGMyekdXQytBUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="농협그룹">농협그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                                <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50170610" onclick="s_trackApply(this, 'hot100', 'job');" title="농협네트웍스 충북지사 사무직원 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50170610" target="_blank" onmousedown=""><span>농협네트웍스 충북지사 사무직원 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50170610" imgtype="button" class="spr_scrap btn_scrap scrap-50170610 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리사무원</span><span>사무직</span><span>사무보조</span><span>사무행정</span>                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">충북 청주시 서원구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 파견직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50170610','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.05(토)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50055952" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">77</strong>
                    <span class="rank_change up">
                        <span class="num">52</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=NStsaHdvMXVOcWNFN1Z4WTNCb1FCQT09" class="str_tit" target="_blank">
                            리드커리어(주)                        </a>
                                        <button type="button" csn="NStsaHdvMXVOcWNFN1Z4WTNCb1FCQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="리드커리어그룹">리드커리어그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50055952" onclick="s_trackApply(this, 'hot100', 'job');" title="[코스닥 상장사/동탄본사] 주식회사 티에프이 경리 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50055952" target="_blank" onmousedown=""><span>[코스닥 상장사/동탄본사] 주식회사 티에프이 경리 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50055952" imgtype="button" class="spr_scrap btn_scrap scrap-50055952 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>회계사</span><span>더존</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 화성시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50055952','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">18일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50184378" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">78</strong>
                    <span class="rank_change up">
                        <span class="num">13</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZEs3QnJXUkhObSs1WmtjMVFxbForZz09" class="str_tit" target="_blank">
                            씨로우                        </a>
                                        <button type="button" csn="ZEs3QnJXUkhObSs1WmtjMVFxbForZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50184378" onclick="s_trackApply(this, 'hot100', 'job');" title="TM/마케팅/마케터/영업/영상/디자이너/컨텐츠작가/비서/아웃바운드/작가/건설입찰/입찰/개발자/텔레마케터" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50184378&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50184378, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>TM/마케팅/마케터/영업/영상/디자이너/컨텐츠작가/비서/아웃바운드/작가/건설입찰/입찰/개발자/텔레마케터</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50184378" imgtype="button" class="spr_scrap btn_scrap scrap-50184378 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>급여(Payroll)</span><span>비서</span><span>송무비서</span><span>임원비서</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                미디어·문화·스포츠 조회 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 부천시 원미구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50184378','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~05.03(토)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50127382" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">79</strong>
                    <span class="rank_change up">
                        <span class="num">24</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=bkxZV3RnMktrZ1RGMmJTUTQ1ZmIzZz09" class="str_tit" target="_blank">
                            서울대학교병원                        </a>
                                        <button type="button" csn="bkxZV3RnMktrZ1RGMmJTUTQ1ZmIzZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="서울대학교병원그룹">서울대학교병원그룹</span>
                                                                <span class="info_stock" title="공사·공기업">공사·공기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50127382" onclick="s_trackApply(this, 'hot100', 'job');" title="서울대학교병원 연구원 채용 공고(사업비 관리/정산)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50127382" target="_blank" onmousedown=""><span>서울대학교병원 연구원 채용 공고(사업비 관리/정산)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50127382" imgtype="button" class="spr_scrap btn_scrap scrap-50127382 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>관리회계</span><span>예산관리</span><span>자금관리</span><span>재무회계</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 종로구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50127382','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">9일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50180964" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">80</strong>
                    <span class="rank_change down">
                        <span class="num">6</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=a0FzZ3B3MzYxL1BaZmRSNEJXTmtBUT09" class="str_tit" target="_blank">
                            (주)티엔아이                        </a>
                                        <button type="button" csn="a0FzZ3B3MzYxL1BaZmRSNEJXTmtBUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50180964" onclick="s_trackApply(this, 'hot100', 'job');" title="사무보조 및 경리" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50180964" target="_blank" onmousedown=""><span>사무보조 및 경리</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50180964" imgtype="button" class="spr_scrap btn_scrap scrap-50180964 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>사무직</span><span>경영지원</span><span>품질검사원</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                생산 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">충남 천안시 서북구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50180964','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50111279" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">81</strong>
                    <span class="rank_change down">
                        <span class="num">5</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=MGNLWTdKanpOTk01dWZKcXNXcVdkQT09" class="str_tit" target="_blank">
                            (주)휴로넷                        </a>
                                        <button type="button" csn="MGNLWTdKanpOTk01dWZKcXNXcVdkQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50111279" onclick="s_trackApply(this, 'hot100', 'job');" title="[부산진구] SK오앤에스 사무직 사원채용[신입환영]" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50111279" target="_blank" onmousedown=""><span>[부산진구] SK오앤에스 사무직 사원채용[신입환영]</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50111279" imgtype="button" class="spr_scrap btn_scrap scrap-50111279 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 동구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50111279','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">1시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50186338" class="list_item effect">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">82</strong>
                    <span class="rank_change down">
                        <span class="num">31</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Mkd1Q25YMXdxMXgrS05yU2lUdmt5UT09" class="str_tit" target="_blank">
                            (주) 영유통                        </a>
                                        <button type="button" csn="Mkd1Q25YMXdxMXgrS05yU2lUdmt5UT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50186338" onclick="s_trackApply(this, 'hot100', 'job');" title="[영유통 천안지점] 재무회계경리 Admin 모집 (정규직)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50186338&amp;adsCategoryItem=effect_bold&amp;" target="_blank" onmousedown="Saramin.clickAds(50186338, 'ads_category=highlight_effect&amp;ads_item=effect_bold')"><span>[영유통 천안지점] 재무회계경리 Admin 모집 (정규직)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50186338" imgtype="button" class="spr_scrap btn_scrap scrap-50186338 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>법인결산</span><span>전표입력</span><span>출납</span><span>회계결산</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">충남 천안시 동남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50186338','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">7시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50160192" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">83</strong>
                    <span class="rank_change up">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=NDJzMzF0VXdwSitZUmlNNTJlMDgrUT09" class="str_tit" target="_blank">
                            (주)파메어스                        </a>
                                        <button type="button" csn="NDJzMzF0VXdwSitZUmlNNTJlMDgrUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50160192" onclick="s_trackApply(this, 'hot100', 'job');" title="사내 규모 확장에 따른 경영지원팀 총무 충원합니다." href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50160192" target="_blank" onmousedown=""><span>사내 규모 확장에 따른 경영지원팀 총무 충원합니다.</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50160192" imgtype="button" class="spr_scrap btn_scrap scrap-50160192 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>자산관리</span><span>총무</span><span>내방객응대</span><span>문서작성</span><span>비품관리</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                총무·법무·사무 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 중구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50160192','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~05.04(일)</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49970942" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">84</strong>
                    <span class="rank_change up">
                        <span class="num">75</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49970942" onclick="s_trackApply(this, 'hot100', 'job');" title="[인천/대기업/통근버스] 두산계열사 사무지원 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49970942" target="_blank" onmousedown=""><span>[인천/대기업/통근버스] 두산계열사 사무지원 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49970942" imgtype="button" class="spr_scrap btn_scrap scrap-49970942 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>전산회계</span><span>더존</span><span>계산서발행</span><span>급여(Payroll)</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">인천 중구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49970942','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">27일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50153230" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">85</strong>
                    <span class="rank_change down">
                        <span class="num">29</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=M002NXJXZEpOcDVvNWFmMWdxZTVXUT09" class="str_tit" target="_blank">
                            현대자동차(주)                        </a>
                                        <button type="button" csn="M002NXJXZEpOcDVvNWFmMWdxZTVXUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="현대자동차그룹">현대자동차그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50153230" onclick="s_trackApply(this, 'hot100', 'job');" title="[사업/기획] 3월 신입" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50153230" target="_blank" onmousedown=""><span>[사업/기획] 3월 신입</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50153230" imgtype="button" class="spr_scrap btn_scrap scrap-50153230 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>빅데이터</span><span>AI(인공지능)</span><span>재무기획</span><span>재무제표</span><span>재무회계</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                생산 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">전국</p>
                        </li>
                                                                <li>
                            <p class="career">신입</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50153230" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">5일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50124202" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">86</strong>
                    <span class="rank_change up">
                        <span class="num">27</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=VHJocDhySWFmM0h3V0lSVjdBK0FoUT09" class="str_tit" target="_blank">
                            (주)에이와이엔터테인먼트                        </a>
                                        <button type="button" csn="VHJocDhySWFmM0h3V0lSVjdBK0FoUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50124202" onclick="s_trackApply(this, 'hot100', 'job');" title="[인계동/주5일]본사 사무직 정규직원 채용(엑셀초보가능)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50124202" target="_blank" onmousedown=""><span>[인계동/주5일]본사 사무직 정규직원 채용(엑셀초보가능)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50124202" imgtype="button" class="spr_scrap btn_scrap scrap-50124202 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>감사</span><span>경리</span><span>급여(Payroll)</span><span>사무직</span><span>문서작성</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 수원시 팔달구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50124202','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49962061" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">87</strong>
                    <span class="rank_change down">
                        <span class="num">4</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49962061" onclick="s_trackApply(this, 'hot100', 'job');" title="[대구/HD현대로보틱스] 재고/물류 사무관리 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49962061" target="_blank" onmousedown=""><span>[대구/HD현대로보틱스] 재고/물류 사무관리 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49962061" imgtype="button" class="spr_scrap btn_scrap scrap-49962061 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">대구 달성군 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49962061','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">28일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50107337" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">88</strong>
                    <span class="rank_change up">
                        <span class="num">12</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=WjR1ZVFhSkJNNzFxVzI4bWw0TENBZz09" class="str_tit" target="_blank">
                            (주)힐리언스                        </a>
                                        <button type="button" csn="WjR1ZVFhSkJNNzFxVzI4bWw0TENBZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="대웅그룹">대웅그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50107337" onclick="s_trackApply(this, 'hot100', 'job');" title="(주)힐리언스(대웅 자회사) 회계/재무 팀원 모집(신입/경력)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50107337" target="_blank" onmousedown=""><span>(주)힐리언스(대웅 자회사) 회계/재무 팀원 모집(신입/경력)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50107337" imgtype="button" class="spr_scrap btn_scrap scrap-50107337 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>회계사</span><span>더존</span><span>관리회계</span><span>자금관리</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50107337','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">내일마감</span>
                    <span class="deadlines">11일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50126140" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">89</strong>
                    <span class="rank_change up">
                        <span class="num">55</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=cmYwNFNmc0NONktwOEl3MkcxbHhmdz09" class="str_tit" target="_blank">
                            (주)씨에스에이코스믹                        </a>
                                        <button type="button" csn="cmYwNFNmc0NONktwOEl3MkcxbHhmdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="홈캐스트그룹">홈캐스트그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50126140" onclick="s_trackApply(this, 'hot100', 'job');" title="CSA코스믹/조성아뷰티 재무회계팀 인턴사원 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50126140" target="_blank" onmousedown=""><span>CSA코스믹/조성아뷰티 재무회계팀 인턴사원 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50126140" imgtype="button" class="spr_scrap btn_scrap scrap-50126140 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>관리회계</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 인턴직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50126140','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">10일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50176390" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">90</strong>
                    <span class="rank_change down">
                        <span class="num">8</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" class="str_tit" target="_blank">
                            (주)사람인에이치에스                        </a>
                                        <button type="button" csn="Qm45c1kvejJ2R2poN1NMTDgxK1RsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="다우키움그룹">다우키움그룹</span>
                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50176390" onclick="s_trackApply(this, 'hot100', 'job');" title="[재택근무/일본어必/워라밸/일본인채용] 영업지원 사무보조 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50176390" target="_blank" onmousedown=""><span>[재택근무/일본어必/워라밸/일본인채용] 영업지원 사무보조 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50176390" imgtype="button" class="spr_scrap btn_scrap scrap-50176390 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>비서</span><span>사무직</span><span>서무</span><span>총무</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                공공·복지 조회 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 영등포구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50176390','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.06(일)</span>
                    <span class="deadlines">8시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50100397" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">91</strong>
                    <span class="rank_change up">
                        <span class="num">46</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZitBSFRlMXp4RTJteGhkbWJ5a3gxdz09" class="str_tit" target="_blank">
                            (주)아티스트스튜디오                        </a>
                                        <button type="button" csn="ZitBSFRlMXp4RTJteGhkbWJ5a3gxdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="아티스트스튜디오그룹">아티스트스튜디오그룹</span>
                                                                <span class="info_stock" title="코스닥">코스닥</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50100397" onclick="s_trackApply(this, 'hot100', 'job');" title="[드라마 제작사]경영관리본부 재무/회계 사원급 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50100397" target="_blank" onmousedown=""><span>[드라마 제작사]경영관리본부 재무/회계 사원급 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50100397" imgtype="button" class="spr_scrap btn_scrap scrap-50100397 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50100397','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.28(금)</span>
                    <span class="deadlines">12일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49756630" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">92</strong>
                    <span class="rank_change up">
                        <span class="num">30</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=ZjEySFIyandoZ3RaNFdpNDU4cENZdz09" class="str_tit" target="_blank">
                            (주)신신사                        </a>
                                        <button type="button" csn="ZjEySFIyandoZ3RaNFdpNDU4cENZdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49756630" onclick="s_trackApply(this, 'hot100', 'job');" title="2025년 신신사 상반기 수시채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49756630" target="_blank" onmousedown=""><span>2025년 신신사 상반기 수시채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49756630" imgtype="button" class="spr_scrap btn_scrap scrap-49756630 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>유지보수</span><span>네트워크</span><span>인프라</span><span>RPA</span><span>C#</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경남 창원시 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49756630','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-2</span>
                    <span class="deadlines">56일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49959007" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">93</strong>
                    <span class="rank_change up">
                        <span class="num">39</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=azZTbjl1MDE2TGdFR2JGclIxdncrUT09" class="str_tit" target="_blank">
                            강남베드로병원                        </a>
                                        <button type="button" csn="azZTbjl1MDE2TGdFR2JGclIxdncrUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49959007" onclick="s_trackApply(this, 'hot100', 'job');" title="[강남베드로병원] 재무회계 직원 채용 공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49959007" target="_blank" onmousedown=""><span>[강남베드로병원] 재무회계 직원 채용 공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49959007" imgtype="button" class="spr_scrap btn_scrap scrap-49959007 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>전산회계</span><span>더존</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 강남구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49959007','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">28일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50020733" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">94</strong>
                    <span class="rank_change up">
                        <span class="num">25</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=bmJFa1RtN1FJUkxEZ1ZaM29LWVBOQT09" class="str_tit" target="_blank">
                            직업세상                        </a>
                                        <button type="button" csn="bmJFa1RtN1FJUkxEZ1ZaM29LWVBOQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                                    <span class="dispatch" title="파견·도급·대행">파견·도급·대행</span>
                                    </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50020733" onclick="s_trackApply(this, 'hot100', 'job');" title="[월260만/매년항공권제공] 아시아나항공 국제선 예약센터 상담사" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50020733" target="_blank" onmousedown=""><span>[월260만/매년항공권제공] 아시아나항공 국제선 예약센터 상담사</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50020733" imgtype="button" class="spr_scrap btn_scrap scrap-50020733 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>사무직</span><span>서무</span><span>안내데스크</span><span>총무</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_hot"></use>
                                    </svg>
                                                                인기있는                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">부산 연제구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">고졸↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50020733','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">1시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49823925" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">95</strong>
                    <span class="rank_change up">
                        <span class="num">77</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=MWkwNmJETzVaNUZpb1h0TWlaRVhsUT09" class="str_tit" target="_blank">
                            롯데지알에스(주)                        </a>
                                        <button type="button" csn="MWkwNmJETzVaNUZpb1h0TWlaRVhsUT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="롯데그룹">롯데그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49823925" onclick="s_trackApply(this, 'hot100', 'job');" title="[롯데GRS] 구매전략부문 SCM팀 계약직 채용" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49823925" target="_blank" onmousedown=""><span>[롯데GRS] 구매전략부문 SCM팀 계약직 채용</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49823925" imgtype="button" class="spr_scrap btn_scrap scrap-49823925 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>세무사</span><span>회계사</span><span>계산서발행</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 송파구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49823925','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">46일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50170846" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">96</strong>
                    <span class="rank_change up">
                        <span class="num">13</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=T2U3RGJ5Zm1IS2h2YkRNSk1ycHlPZz09" class="str_tit" target="_blank">
                            법무법인 동주                        </a>
                                        <button type="button" csn="T2U3RGJ5Zm1IS2h2YkRNSk1ycHlPZz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50170846" onclick="s_trackApply(this, 'hot100', 'job');" title="법무법인(로펌) 동주 경영지원팀 신입급 채용공고" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50170846" target="_blank" onmousedown=""><span>법무법인(로펌) 동주 경영지원팀 신입급 채용공고</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50170846" imgtype="button" class="spr_scrap btn_scrap scrap-50170846 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>비서</span><span>사무직</span><span>서무</span> 외                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구 외</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50170846','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~03.21(금)</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-49930713" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">97</strong>
                    <span class="rank_change up">
                        <span class="num">86</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=dGdoUE5US1R4dkNTR3N3MDZMVGVsQT09" class="str_tit" target="_blank">
                            (주)더존크리에이티브                        </a>
                                        <button type="button" csn="dGdoUE5US1R4dkNTR3N3MDZMVGVsQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_49930713" onclick="s_trackApply(this, 'hot100', 'job');" title="경영지원실 사무직 모집" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=49930713" target="_blank" onmousedown=""><span>경영지원실 사무직 모집</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="49930713" imgtype="button" class="spr_scrap btn_scrap scrap-49930713 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>경리사무원</span><span>4대보험</span><span>계산서발행</span><span>급여(Payroll)</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                회계·세무·재무 스크랩 급상승                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('49930713','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">채용시</span>
                    <span class="deadlines">32일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50169600" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">98</strong>
                    <span class="rank_change up">
                        <span class="num">19</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Q2ptbTFvOXlLZHhMSDZlOFh2M0RsQT09" class="str_tit" target="_blank">
                            롯데렌탈(주)                        </a>
                                        <button type="button" csn="Q2ptbTFvOXlLZHhMSDZlOFh2M0RsQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="롯데그룹">롯데그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50169600" onclick="s_trackApply(this, 'hot100', 'job');" title="[롯데렌탈] 신입사원 모집 (계약직)_영업" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50169600" target="_blank" onmousedown=""><span>[롯데렌탈] 신입사원 모집 (계약직)_영업</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50169600" imgtype="button" class="spr_scrap btn_scrap scrap-50169600 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>전산회계</span><span>관리회계</span><span>기업회계</span><span>재무회계</span><span>전표입력</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                    <svg>
                                        <use xlink:href="#rec_title_tag_emoji_mActive"></use>
                                    </svg>
                                                                금융·보험 조회 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">경기 안성시 외</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 계약직</p>
                        </li>
                                                                <li>
                            <p class="education">학력무관</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50169600','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">D-6</span>
                    <span class="deadlines">4일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50176720" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">99</strong>
                    <span class="rank_change down">
                        <span class="num">22</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=N2VlUGRZWmlsWEZZKzdPSEl2NnRJQT09" class="str_tit" target="_blank">
                            진영산업(주)                        </a>
                                        <button type="button" csn="N2VlUGRZWmlsWEZZKzdPSEl2NnRJQT09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="진영산업그룹">진영산업그룹</span>
                                                                            </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50176720" onclick="s_trackApply(this, 'hot100', 'job');" title="[현대기아1차사]재무관리실 자금담당 (신입,경력)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50176720" target="_blank" onmousedown=""><span>[현대기아1차사]재무관리실 자금담당 (신입,경력)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50176720" imgtype="button" class="spr_scrap btn_scrap scrap-50176720 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>경리</span><span>자금관리</span><span>출납</span><span>ERP</span><span>재무</span>                    </span>
                </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 서초구</p>
                        </li>
                                                                <li>
                            <p class="career">경력무관 · 정규직</p>
                        </li>
                                                                <li>
                            <p class="education">대학(2,3년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <button class="sri_btn_md" title="클릭하면 입사지원할 수 있는 창이 뜹니다." onclick="try{quickApplyForm('50176720','','t_category=hot100&amp;t_content=job', ''); return false;} catch (e) {}; return false;" onmousedown="try{n_trackEvent('apply','list','quick_apply');}catch(e){}"><span class="sri_btn_immediately">입사지원</span></button>                <p class="support_detail">
                    <span class="date">~04.06(일)</span>
                    <span class="deadlines">3일 전 등록</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    
        <div id="rec-50168330" class="list_item">
        <div class="box_item">
                            <div class="col ranking_info">
                    <strong class="tit">100</strong>
                    <span class="rank_change up">
                        <span class="num">34</span>
                    </span>
                </div>
            
            
                            <div class="col company_nm">
                                            <a href="/zf_user/company-info/view-inner-recruit?csn=Z0swQ0h5MVFHNkp2ejJEbjFyTlBNdz09" class="str_tit" target="_blank">
                            미래에셋자산운용(주)                        </a>
                                        <button type="button" csn="Z0swQ0h5MVFHNkp2ejJEbjFyTlBNdz09" title="관심기업 등록" del_fl="n" aria-pressed="false" class="interested_corp" onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}" first_nudge="off"><span>관심기업 등록</span></button>                                            <span class="main_corp" title="미래에셋그룹">미래에셋그룹</span>
                                                                <span class="info_stock" title="대기업">대기업</span>
                                                        </div>
                        <div class="col notification_info">
                <div class="job_tit">
                    <a class="str_tit " id="rec_link_50168330" onclick="s_trackApply(this, 'hot100', 'job');" title="투자풀운용부문 투자풀사업본부 정규직 전환형 인턴사원(신입)" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50168330" target="_blank" onmousedown=""><span>투자풀운용부문 투자풀사업본부 정규직 전환형 인턴사원(신입)</span></a>                     <button type="button" onclick="Saramin.btnJob('scrap',this,'','list');" title="스크랩" scraped="n" rec_idx="50168330" imgtype="button" class="spr_scrap btn_scrap scrap-50168330 off"><span class="blind">스크랩</span></button>                </div>
                <div class="job_meta">
                    <span class="job_sector">
                      <span>MSSQL</span><span>CFA</span><span>자산관리</span><span>자산운용</span><span>마케팅기획</span> 외                    </span>
                </div>
                                    <div class="job_badge">
                                                                            <span>
                                                                마케팅·홍보·조사 지원 TOP100                            </span>
                                                                    </div>
                            </div>
            <div class="col recruit_info">
                <ul>
                                            <li>
                            <p class="work_place">서울 종로구</p>
                        </li>
                                                                <li>
                            <p class="career">신입 · 정규직 외</p>
                        </li>
                                                                <li>
                            <p class="education">대학교(4년)↑</p>
                        </li>
                                                        </ul>
            </div>
            <div class="col support_info">
                <a class="sri_btn_md" href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=50168330" target="_blank" title="홈페이지 지원" onclick="try{s_trackApply(this, 'hot100', 'job');}catch(e){};"><span class="sri_btn_homepage_apply">홈페이지 지원</span></a>                <p class="support_detail">
                    <span class="date">D-4</span>
                    <span class="deadlines">9시간 전 수정</span>
                </p>
            </div>
        </div>
        <div class="similar_recruit"></div>
    </div>
    </div>

</body>
</html>