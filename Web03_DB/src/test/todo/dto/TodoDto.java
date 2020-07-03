package test.todo.dto;

public class TodoDto {
	//회원 한명의 정보를 담을 필드 선언
		private int num;
		private String Content;
		private String Regdate;
		//default 생성자 만들기
		public TodoDto() {}
		//인자로 필드에 저장할 값을 전달 받는 생성자
		public TodoDto(int num, String Content, String Regdate) {
			super();
			this.num = num;
			this.Content = Content;
			this.Regdate = Regdate;
		}
		//필드의 접근 메소드 setter, getter 메소드 
		public int getNum() {
			return num;
		}
		public void setNum(int num) {
			this.num = num;
		}
		public String getContent() {
			return Content;
		}
		public void setContent(String Content) {
			this.Content = Content;
		}
		public String getRegdate() {
			return Regdate;
		}
		public void setRegdate(String Regdate) {
			this.Regdate = Regdate;
		}
}
