package com.mycompany.springframework.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.springframework.dto.Ch13Board;
import com.mycompany.springframework.dto.Ch13Pager;

@Mapper
public interface Ch13BoardDao {
	public int insert(Ch13Board board);
	public List<Ch13Board> selectList(Ch13Pager pager);
	public int countRows();
	public Ch13Board selectByBno(int bno);
	public Ch13Board selectAttachByBno(int bno);
	public int update(Ch13Board board);
	public int delete(int bno);
	public int updateHitcount(int bno);
}
