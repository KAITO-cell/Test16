package beans;
import java.io.Serializable;

public class ScheduleModel implements Serializable{

	String first;
	String second;
	String third;
	String fourth;
	String fifth;
	String sixth;
	String seventh;
	
	public ScheduleModel(String first, String second, String third, String fourth, String fifth, String sixth, String seventh) {

		this.first = first;
		this.second = second;
		this.third = third;
		this.fourth = fourth;
		this.fifth = fifth;
		this.sixth = sixth;
		this.seventh = seventh;
	}

	public String getFirst() {
		return this.first;
	}
	public String getSecond() {
		return this.second;
	}
	public String getThird() {
		return this.third;
	}
	public String getFourth() {
		return this.fourth;
	}
	public String getFifth() {
		return this.fifth;
	}
	public String getSixth() {
		return this.sixth;
	}
	public String getSeventh() {
		return this.seventh;
	}
	
}
