
public class Marathon {
	static final String location = "Las Vegas";
	static int athletes = 0;
	int speed;
	int bibnum;
	String name;

	public static void main(String[] args) {
		Marathon m1 = new Marathon("Bob", 13);
		Marathon m2 = new Marathon("Dave", 11);

		System.out.print(m1.name + " number " + m1.bibnum + " is running at " + m1.speed + " mph");

		System.out.println(m2.name + " number " + m2.bibnum + " is running at " + m2.speed + " mph");
		System.out.println("Location: " + Marathon.location);

	}

	public Marathon(String name, int speed) {
		athletes++;
		this.name = name;
		this.speed = speed;
		this.bibnum = athletes;
	}

}
