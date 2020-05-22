package model;

import java.util.ArrayList;
import java.util.List;

public class Method {

	//moethod full body
	String methodBody;
	
//	        Wr = Weight of a recursive call
//			Nr = Number of recursive calls
	boolean isRecursiveCall;
	String recursiveCallNo="";
//			Wmcms = Weight of a regular method calling another regular method in the same file
//			Nmcms = Number of calls from regular method(s) to other regular methods in the same file
	List<String> callToNormalMethodsOfThis = new ArrayList<String>();
//			Wmcmd = Weight of a regular method calling another regular method in a different file
//			Nmcmd = Number of calls from regular method(s) to other regular methods in different files
	List<String> callToNormalMethodsOfOther = new ArrayList<String>();
	public String getMethodBody() {
		return methodBody;
	}
	public void setMethodBody(String methodBody) {
		this.methodBody = methodBody;
	}
	public boolean isRecursiveCall() {
		return isRecursiveCall;
	}
	public void setRecursiveCall(boolean isRecursiveCall) {
		this.isRecursiveCall = isRecursiveCall;
	}
	public String getRecursiveCallNo() {
		return recursiveCallNo;
	}
	public void setRecursiveCallNo(String recursiveCallNo) {
		this.recursiveCallNo = recursiveCallNo;
	}
	public List<String> getCallToNormalMethodsOfThis() {
		return callToNormalMethodsOfThis;
	}
	public void setCallToNormalMethodsOfThis(List<String> callToNormalMethodsOfThis) {
		this.callToNormalMethodsOfThis = callToNormalMethodsOfThis;
	}
	public List<String> getCallToNormalMethodsOfOther() {
		return callToNormalMethodsOfOther;
	}
	public void setCallToNormalMethodsOfOther(List<String> callToNormalMethodsOfOther) {
		this.callToNormalMethodsOfOther = callToNormalMethodsOfOther;
	}

	

}
