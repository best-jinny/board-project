package com.demo.boardproject.service;

import com.demo.boardproject.domain.Article;
import com.demo.boardproject.domain.ArticleComment;
import com.demo.boardproject.domain.UserAccount;
import com.demo.boardproject.dto.ArticleCommentDto;
import com.demo.boardproject.repository.ArticleCommentRepository;
import com.demo.boardproject.repository.ArticleRepository;
import com.demo.boardproject.repository.UserAccountRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.BDDMockito.given;
import static org.mockito.BDDMockito.then;

@DisplayName("비즈니스 로직 - 댓글")
@ExtendWith(MockitoExtension.class)
class ArticleCommentServiceTest {

    @InjectMocks private ArticleCommentService sut;

    @Mock private ArticleRepository articleRepository;
    @Mock private ArticleCommentRepository articleCommentRepository;
    @Mock private UserAccountRepository userAccountRepository;

    @DisplayName("게시글 ID로 조회하면, 해당하는 댓글 리스트를 반환한다.")
    @Test
    void givenArticleId_whenSearchingComments_thenReturnsComments() {
        // given
        Long articleId = 1L;
        UserAccount userAccount = userAccountRepository.save(UserAccount.of("uno", "pw", null, null, null));
        given(articleRepository.findById(articleId)).willReturn(Optional.of(Article.of(userAccount, "title", "content", "#hashtag")));

        // when
        List<ArticleCommentDto> articleComments = sut.searchArticleComment(articleId);

        // then
        assertThat(articleComments).isNotNull();
        then(articleRepository).should().findById(articleId);
    }

    @DisplayName("댓글 정보를 입력하면, 댓글을 저장한다.")
    @Test
    void givenArticleCommentInfo_whenSavingComment_thenSaveComment() {
        // given
        given(articleCommentRepository.save(any(ArticleComment.class))).willReturn(null);
        // when
        sut.saveArticleComment(ArticleCommentDto.of(LocalDateTime.now(), "jinny", LocalDateTime.now(), "jinny", "comment"));

        // then
        then(articleCommentRepository).should().save(any(ArticleComment.class));
    }

}