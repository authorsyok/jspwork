package question;

public class Season {
	private int month;
	
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}

	public String process(int month) {
		String result = "";
		
		switch(month) {
		case 3:
		case 4:
		case 5:
			result="��";
			break;
		case 6:
		case 7:
		case 8:
			result="����";
			break;
		case 9:
		case 10:
		case 11:
			result="����";
			break;
		case 12:
		case 1:
		case 2:
			result="�ܿ�";
			break;
		}
		return result;
	}
}
