package com.demo.boardproject.dto.request;

import com.demo.boardproject.dto.ArticleDto;
import com.demo.boardproject.dto.UserAccountDto;

public record ArticleRequest(
        String title,
        String content,
        String hashtag
){
    public static ArticleRequest of(String title, String content, String hashtag) {
        return new ArticleRequest(title, content, hashtag);
    }

    public ArticleDto toDto(UserAccountDto userAccountDto) {
        return ArticleDto.of(
                userAccountDto,
                title,
                content,
                hashtag
        );
    }


}
