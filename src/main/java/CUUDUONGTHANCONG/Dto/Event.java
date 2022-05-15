package CUUDUONGTHANCONG.Dto;

public class Event {
	private long id_sukien;
	private int id_loaisukien;
	private String tensukien;
	private String date;
	private	String description;
	private String hinhev;
	private int id;
	private String name;
	private String mota;
	public long getId_sukien() {
		return id_sukien;
	}
	public void setId_sukien(long id_sukien) {
		this.id_sukien = id_sukien;
	}
	public int getId_loaisukien() {
		return id_loaisukien;
	}
	public void setId_loaisukien(int id_loaisukien) {
		this.id_loaisukien = id_loaisukien;
	}
	public String getTensukien() {
		return tensukien;
	}
	public void setTensukien(String tensukien) {
		this.tensukien = tensukien;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getHinhev() {
		return hinhev;
	}
	public void setHinhev(String hinhev) {
		this.hinhev = hinhev;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Event()
	{
		super();
	}
	
}
