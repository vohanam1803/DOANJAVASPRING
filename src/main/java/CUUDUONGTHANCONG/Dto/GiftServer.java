package CUUDUONGTHANCONG.Dto;

public class GiftServer {
	private int idserver;
	private int idgiftserver;
	private String tenserver;
	private int idgift;
	private	String giftcode;
	public GiftServer()
	{
		super();
	}
	public int getIdserver() {
		return idserver;
	}
	public void setIdserver(int idserver) {
		this.idserver = idserver;
	}
	public int getIdgiftserver() {
		return idgiftserver;
	}
	public void setIdgiftserver(int idgiftserver) {
		this.idgiftserver = idgiftserver;
	}
	public String getTenserver() {
		return tenserver;
	}
	public void setTenserver(String tenserver) {
		this.tenserver = tenserver;
	}
	public int getIdgift() {
		return idgift;
	}
	public void setIdgift(int idgift) {
		this.idgift = idgift;
	}
	public String getGiftcode() {
		return giftcode;
	}
	public void setGiftcode(String giftcode) {
		this.giftcode = giftcode;
	}
}
