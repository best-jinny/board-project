package com.demo.boardproject.dto.request;

import com.demo.boardproject.dto.ArticleCommentDto;
import com.demo.boardproject.dto.UserAccountDto;

import java.io.Serializable;

/**
 * A DTO for the {@link com.demo.boardproject.domain.ArticleComment} entity
 */
public record ArticleCommentRequest(Long articleId, String content) {

    public static ArticleCommentRequest of(Long articleId, String content) {
        return new ArticleCommentRequest(articleId, content);
    }

    public ArticleCommentDto toDto(UserAccountDto userAccountDto) {
        return ArticleCommentDto.of(
                articleId,
                userAccountDto,
                content
        );
    }

}