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
			ThreeYn = "3의배수";
		}
		else {
			ThreeYn = "3의배수 아님";
		}
		return ThreeYn;
	}
}
