package question;

public class Three {
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	public String process(int i) {
		String ThreeYn;
		
		if(i % 3 == 0) {
			ThreeYn = "3�ǹ��";
		}
		else {
			ThreeYn = "3�ǹ�� �ƴ�";
		}
		return ThreeYn;
	}
}
