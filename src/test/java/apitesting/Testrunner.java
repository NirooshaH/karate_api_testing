package apitesting;
import com.intuit.karate.junit5.Karate;

public class Testrunner {
	@Karate.Test
	Karate hellow_world() {
		return Karate.run("Hellow_world").relativeTo(getClass());	
	}
	@Karate.Test
	Karate getapitest() {
		return Karate.run("Get_api").relativeTo(getClass());	
	}
	@Karate.Test
	Karate jsonobject() {
		return Karate.run("json").relativeTo(getClass());	
	}
	@Karate.Test
	Karate pass_request_header() {
		return Karate.run("pass request header").relativeTo(getClass());	
	}
	@Karate.Test
	Karate post_requrest() {
		return Karate.run("Post_call").relativeTo(getClass());	
	}
	@Karate.Test
	Karate put_request() {
		return Karate.run("put_call").relativeTo(getClass());	
	}
	@Karate.Test
	Karate post_put_request() {
		return Karate.run("post_put_request").relativeTo(getClass());	
	}
	@Karate.Test
	Karate delete_request() {
		return Karate.run("Delete_request").relativeTo(getClass());	
	}
	
}
