package question;

public class Alphabet {
	private String small;
	
	public String process() {
		StringBuffer sb = new StringBuffer();

		char c = 'a';
		char c2 = small.charAt(0);
		
		do {
			sb.append(c);
			c = (char)(c+1);
		} while(c <= c2);
		
		return sb.toString();
	}
	

	public String getSmall() {
		return small;
	}

	public void setSmall(String small) {
		this.small = small;
	}
	
	
}
