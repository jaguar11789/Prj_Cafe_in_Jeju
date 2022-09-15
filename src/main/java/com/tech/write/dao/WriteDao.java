package com.tech.write.dao;

public interface WriteDao {

   public void cafeaddr(String addr1, String addr2, String addr3, int cafe_num);

   public void cafeconvenience(String cafeconvenience, int cafe_num);

   public void cafephoto(String cafephoto, int cafe_num);

   public void cafetag(String cafetag, int cafe_num);

   public void caferegister(String cafename, String cafecondent, String string, String cafetnum, String cafepnum,
         String string2, String cafesns, String string3, String cafedetail, String string4, String cafebusnum,
         String cafeceoname, String filename1, String filename2);

   public int selNum();

   public void imgwrite(int cafe_num, String originFile, String changeFile);

   public void menuimgwrite(String cmname,String cmenu, String changeFile, int cafe_num);

   public void menupricewrite(String cafemprice, int cafe_num);



}