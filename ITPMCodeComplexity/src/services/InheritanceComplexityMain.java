package services;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import services.InheritanceComplexity;

public class InheritanceComplexityMain {
	String path;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public static void main(String[] args) throws IOException {

		InheritanceComplexityMain im = new InheritanceComplexityMain();
		String f1 = im.getPath();

		FileReader fr = new FileReader(f1);
		BufferedReader br = new BufferedReader(fr);

		int i;
		String lines;
		ArrayList<String> line = new ArrayList<>();

		while ((lines = br.readLine()) != null) {
			line.add(lines);

		}

		InheritanceComplexity complexity = new InheritanceComplexity(line);

		ArrayList<Integer> Counts = complexity.inheritkeyline();

		for (i = 0; i < line.size(); i++) {

			System.out.println("" + (i + 1) + "" + line.get(i) + "" + Counts.get(i) + "" + Counts.get(i) + ""
					+ (Counts.get(i) + Counts.get(i)));

		}
		System.out.println(" ");
		System.out.println("Total is = " + complexity.tot());

	}
}
