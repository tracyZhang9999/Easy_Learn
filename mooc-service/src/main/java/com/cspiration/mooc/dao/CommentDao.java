package com.cspiration.mooc.dao;

import com.cspiration.mooc.entity.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Mapper
@Repository
public interface CommentDao {

    Integer insert(Comment comment);

    List<Comment> query(@Param("comment") Comment comment);
}
