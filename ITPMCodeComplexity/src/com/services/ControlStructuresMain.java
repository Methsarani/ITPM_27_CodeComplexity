package com.services;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class ControlStructuresMain {
	String path;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public static void main(String[] args) throws IOException {

		ControlStructuresMain cs1 = new ControlStructuresMain();
		String documentName = cs1.getPath();
		// read file
		FileReader document = new FileReader(documentName);
		BufferedReader bufferedreader = new BufferedReader(document);

		int i;
		String rows;
		ArrayList<String> row = new ArrayList<>();

		while ((rows = bufferedreader.readLine()) != null) {
			row.add(rows);

		}
		// call calculation class
		ControlStructures complexity = new ControlStructures(row);

		ArrayList<Integer> Count = complexity.cntrolrow();
		ArrayList<Integer> WTC = complexity.wtcrow();
		ArrayList<Integer> NC = complexity.ncrow();
		ArrayList<Integer> Ccspps = complexity.ccsppsrow();

		// System.out.println("Row Number " +" code " + " Weight due to control
		// structure type(WTC) " + " Number of conditions in the control structure(NC) "
		// + " Complexity of a program statement with a control structure(Ccs) ");
		System.out.println("");
		// print output
		for (i = 0; i < row.size(); i++) {

			System.out.println("  " + (i + 1) + " " + row.get(i) + " " + WTC.get(i) + " " + NC.get(i) + "  "
					+ Count.get(i) + " " + Ccspps.get(i) + " " + (Count.get(i) + Ccspps.get(i)));
			System.out.println("");
		}

	}

}
