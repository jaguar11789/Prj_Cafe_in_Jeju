package com.tech.write.dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface WriteDao {

	public void registercafeinfo(String cafename, String cafecondent, String cafeaddr, String cafecnum, String cafepnum,
			String cafeconvenience, String cafesns, String cafephoto, String cafedetail, String cafetag, String cafeceoname,
			String cafebusnum, String cafebuslicense, String cafepermit);

	public void registercafeinfo(String cafename, String cafecondent, String caddr, String ctnum, String cpnum,
			String cconvenience, String cafesns, List<MultipartFile> cafephoto, String cafedetail, String ctag,
			String cafeceoname, String cbusnum, List<MultipartFile> cafebuslicense, List<MultipartFile> cafepermit);

	

}
