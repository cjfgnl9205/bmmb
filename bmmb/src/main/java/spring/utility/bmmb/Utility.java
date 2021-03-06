package spring.utility.bmmb;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.springframework.web.multipart.MultipartFile;

public class Utility {
	
	public static String saveFileSpring(MultipartFile multipartFile, String basePath) {
		// input form's parameter name
		String fileName = "";
		// original file name
		String originalFileName = multipartFile.getOriginalFilename();
		// file content type
		String contentType = multipartFile.getContentType();
		// file size
		long fileSize = multipartFile.getSize();
		System.out.println("fileSize: " + fileSize);
		System.out.println("originalFileName: " + originalFileName);
		InputStream inputStream = null;
		OutputStream outputStream = null;
		try {
			if (fileSize > 0) { // 파일이 존재한다면
			// 인풋 스트림을 얻는다.
			inputStream = multipartFile.getInputStream();
				File oldfile = new File(basePath, originalFileName);
				if (oldfile.exists()) {
					for (int k = 0; true; k++) {
						// 파일명 중복을 피하기 위한 일련 번호를 생성하여
						// 파일명으로 조합
						oldfile = new File(basePath, "(" + k + ")" + originalFileName);
						// 조합된 파일명이 존재하지 않는다면, 일련번호가
						// 붙은 파일명 다시 생성
						if (!oldfile.exists()) { // 존재하지 않는 경우
							fileName = "(" + k + ")" + originalFileName;
							break;
						}
					}
				} else {
					fileName = originalFileName;
				}
				// make server full path to save
				String serverFullPath = basePath + "\\" + fileName;
				System.out.println("fileName: " + fileName);
				System.out.println("serverFullPath: " + serverFullPath);
				outputStream = new FileOutputStream(serverFullPath);
				// 버퍼를 만든다.
				int readBytes = 0;
				byte[] buffer = new byte[8192];
				while ((readBytes = inputStream.read(buffer, 0, 8192)) != -1) {
					outputStream.write(buffer, 0, readBytes);
				}
				outputStream.close();
				inputStream.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return fileName;
	}
	
	public static String checkNull(String str) {
		if (str == null) {
			str = "";
		}
		return str;
	}
	
	/**

	 * 

	 * @param totalRecord   전체 레코드수

	 * @param nowPage       현재 페이지

	 * @param recordPerPage 페이지당 레코드 수

	 * @param col           검색 컬럼

	 * @param word          검색어

	 * @return 페이징 생성 문자열

	 */

	public static String paging(int totalRecord, int nowPage, int recordPerPage, String word) {

		int pagePerBlock = 5; // 블럭당 페이지 수
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage)); // 전체 페이지
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));// 전체 그룹
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock)); // 현재 그룹
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특정 그룹의 페이지 목록 시작
		int endPage = (nowGrp * pagePerBlock); // 특정 그룹의 페이지 목록 종료
		StringBuffer str = new StringBuffer();
		str.append("<div style='text-align:center'>");
		str.append("<ul class='pagination justify-content-center'> ");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 5개 이전 페이지로 이동 
		if (nowGrp >= 2) {
			str.append(
					"<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?word=" + word + "&nowPage=" + _nowPage + "'>이전</A></li>");
		}
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (nowPage == i) {
				str.append("<li class='page-item active' style='margin:0 0 20px 0'><a class='page-link' href=#>" + i + "</a></li>");
			} else {
				str.append("<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?word=" + word + "&nowPage=" + i + "'>" + i
						+ "</A></li>");
			}
		}
		_nowPage = (nowGrp * pagePerBlock) + 1; // 5개 다음 페이지로 이동
		if (nowGrp < totalGrp) {
			str.append(
					"<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?word=" + word + "&nowPage=" + _nowPage + "'>다음</a></li>");
		}
		str.append("</ul>");
		str.append("</div>");
		return str.toString();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static void deleteFile(String basePath, String oldfile) {
		if(oldfile !=null && !oldfile.equals("")) {
			File file = new File(basePath, oldfile);
			if(file.exists()) {
				file.delete();
			}
		}
	}

	public static String showpaging(int totalRecord, int nowPage, int recordPerPage) {

		int pagePerBlock = 5; // 블럭당 페이지 수
		int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage)); // 전체 페이지
		int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));// 전체 그룹
		int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock)); // 현재 그룹
		int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특정 그룹의 페이지 목록 시작
		int endPage = (nowGrp * pagePerBlock); // 특정 그룹의 페이지 목록 종료
		StringBuffer str = new StringBuffer();
		str.append("<div style='text-align:center'>");
		str.append("<ul class='pagination justify-content-center'> ");
		int _nowPage = (nowGrp - 1) * pagePerBlock; // 5개 이전 페이지로 이동 
		if (nowGrp >= 2) {
			str.append(
					"<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?&nowPage=" + _nowPage + "'>이전</A></li>");
		}
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (nowPage == i) {
				str.append("<li class='page-item active' style='margin:0 0 20px 0'><a class='page-link' href=#>" + i + "</a></li>");
			} else {
				str.append("<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?nowPage=" + i + "'>" + i
						+ "</A></li>");
			}
		}
		_nowPage = (nowGrp * pagePerBlock) + 1; // 5개 다음 페이지로 이동
		if (nowGrp < totalGrp) {
			str.append(
					"<li class='page-item' style='margin:0 0 20px 0'><a class='page-link' href='./list?nowPage=" + _nowPage + "'>다음</a></li>");
		}
		str.append("</ul>");
		str.append("</div>");
		return str.toString();
	}
	
	
	
	
}
