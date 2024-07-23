package common;

public class Person {
	// 자바 빈즈 규약
	// 1. 기본(default)패키지 이외의 패키지에 속해야 한다.
	// 2. 맴버 변수(속성) 접근지정자로 private 으로 선언
	// 3. 기본 생성자가 있어야한다.
	// 4. 맴버 변수에 접근할 수 있는 setter/getter메서드가 있어야 한다.
	// 5. 세터/게터 메소드는 접근 지정자로 public으로 선언한다.
	
	// 필드
	private String name;  
	private int age;
	
	// 기본 생성자
	public Person() {
		
	}
	
	// 커스텀 생성자
	public Person(String name, int age) {
	//	super();
		this.name = name;
		this.age = age;
	}



	// 메서드
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
}
