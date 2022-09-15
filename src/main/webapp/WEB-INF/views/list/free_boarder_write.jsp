<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="../resources/css/list/free_boarder/free_boarder_write.css" />
  </head>
  <body>
  <br />
  <br />
  <br />
    <form action="boarderwrite" method="post" enctype="Multipart/form-data">
      <table class="fr_write">
        <tr>
          <td>제목</td>
          <td class="fr_title">
            <input class="fr_title" type="text" name="ftitle" />
          </td>
        </tr>
        <tr>
          <td>본문</td>
          <td>
            <textarea
              class="fr_content"
              name="fcontent"
              id=""
              cols="98"
              rows="20"
            ></textarea>
          </td>
        </tr>
        <tr>
          <td>첨부</td>
          <td class="fr_file"><input multiple type="file" name="ffile" /></td>
        </tr>
        <tr>
          <td class="boarder_write" colspan="2" align="right">
            <input
              type="submit"
              value="글쓰기"
              style="background-color: orange"
            />
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>

