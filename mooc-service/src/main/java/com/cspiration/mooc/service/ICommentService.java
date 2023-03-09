package com.cspiration.mooc.service;

import com.cspiration.mooc.entity.Comment;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
public interface ICommentService {

    /**
     * 新增评论
     * @param comment
     * @return
     */
    Boolean insert(Comment comment);

    /**
     * 查找评论
     * @param comment
     * @return
     */
    List<Comment> query(Comment comment);
}
