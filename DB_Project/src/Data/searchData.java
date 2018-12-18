package Data;

public class searchData {
	private String book_id;
	private String book_name;
	private String author;
	private String publisher;
	private String publication_year;
	private String contents;
	private String location_name;
	private String stock;
	private String appendix_type;
	private String name;
	
	public searchData(String book_id, String book_name, String author, String publisher, String publication_year, String contents, String location_name, 
			String stock, String appendix_type, String name) {
		this.book_id = book_id;
		this.book_name = book_name;
		this.author = author;
		this.publisher = publisher;
		this.publication_year = publication_year;
		this.contents = contents;
		this.location_name = location_name;
		this.stock = stock;
		this.appendix_type = appendix_type;
		this.name = name;
	}
	
	public String getbook_id() {
		return book_id;
	}

	public void setbook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getbook_name() {
		return book_name;
	}

	public void setbook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getauthor() {
		return author;
	}

	public void setauthor(String author) {
		this.author = author;
	}

	public String getpublisher() {
		return publisher;
	}

	public void setpublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getpublication_year() {
		return publication_year;
	}

	public void setpublication_year(String publication_year) {
		this.publication_year = publication_year;
	}

	public String getcontents() {
		return contents;
	}

	public void setcontents(String contents) {
		this.contents = contents;
	}

	public String getlocation_name() {
		return location_name;
	}

	public void setlocation_name(String location_name) {
		this.location_name = location_name;
	}

	public String getstock() {
		return stock;
	}

	public void setstock(String stock) {
		this.stock = stock;
	}

	public String getappendix_type() {
		return appendix_type;
	}

	public void setappendix_type(String appendix_type) {
		this.appendix_type = appendix_type;
	}

	public String getappendix_name() {
		return name;
	}

	public void setappendix_name(String name) {
		this.name = name;
	}

}
