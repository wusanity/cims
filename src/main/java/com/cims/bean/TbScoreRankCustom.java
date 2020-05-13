package com.cims.bean;

public class TbScoreRankCustom extends TbScoreRank{
	//学年
	private String schoolYear;
	//学期
	private int semester;
	
	public TbScoreRankCustom() {
		super();
	}

	public TbScoreRankCustom(String schoolYear, int semester) {
		super();
		this.schoolYear = schoolYear;
		this.semester = semester;
	}

	public String getSchoolYear() {
		return schoolYear;
	}
	public void setSchoolYear(String schoolYear) {
		this.schoolYear = schoolYear;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	
}
