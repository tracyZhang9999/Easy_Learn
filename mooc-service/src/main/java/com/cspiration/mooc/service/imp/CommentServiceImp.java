package com.cspiration.mooc.service.imp;

import com.cspiration.mooc.dao.CommentDao;
import com.cspiration.mooc.entity.Comment;
import com.cspiration.mooc.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 本代码来自 Cspiration，由 @Cspiration 提供
 * - 讲师：Edward Shi
 * - 官方网站：https://cspiration.com
 * - 版权所有，禁止转发和分享
 */
@Service
public class CommentServiceImp implements ICommentService {

    @Autowired
    private CommentDao commentDao;

    @Override
    public Boolean insert(Comment comment) {
        if (commentDao.insert(comment) <= 0) {
            return false;
        }
        return true;
    }

    @Override
    public List<Comment> query(Comment comment) {
        return commentDao.query(comment);
    }
}
