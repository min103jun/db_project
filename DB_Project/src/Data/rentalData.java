package Data;

public class rentalData {
	private String book_id;
	private String book_name;

	public rentalData(String book_id, String book_name) {
		this.book_id = book_id;
		this.book_name = book_name;
	}

	public String getbook_id() {
		return book_id;
	}

	public void setbook_id(String book_id) {
		this.book_id = book_id;
	}

	public void setbook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getbook_name() {
		return book_name;
	}

}
