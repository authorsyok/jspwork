package question;

public class Capital {
	private String big;

	public String getBig() {
		return big;
	}

	public void setBig(String big) {
		this.big = big;
	}
	
	public String process() {
		StringBuffer sb = new StringBuffer();
		
		char c = 'A';
		char c2 = big.charAt(0);
		
		for(char i = c2; i >= c; i--) {
			for(char j = c; j<= i; j++) {
				sb.append(j);
			}
			sb.append("<br>");
		}
		return sb.toString();
	}
}
