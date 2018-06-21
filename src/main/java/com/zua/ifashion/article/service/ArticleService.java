package com.zua.ifashion.article.service;

import com.zua.ifashion.article.entity.Article;
import com.zua.ifashion.article.vo.ArticleUserVo;
import com.zua.ifashion.person.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleService {

    //添加文章
    int addArticle(Article article);

    //添加文章不为空字段
    int addArticleSelective(Article article);

    //根据id删除文章
    int deleteArticle(@Param("articleId") Integer articleId);

    //更新文章
    int updateArticle(Article article);

    //更新文章不为空字段
    int updateArticleSelective(Article article);

    //通过文章id查询文章
    Article selectArticleByArticleId(@Param("articleId") Integer articleId);

    //通过文章类型id查询文章集合
    List<Article> selectArticleByArticletypeId(@Param("articletypeId") Integer articletypeId);

    //通过文章标签模糊查询文章集合
    List<Article> selectArticleByTag(@Param("tag") String tag);

    //通过文章标题模糊查询文章集合
    List<Article> selectArticleByTitle(@Param("articleTitle") String articleTitle);

    //查询所有文章
    List<Article> selectAllArticle();

    //根据日期 查询最新发表的十篇文章
    List<Article> selectLatestArticle();

    //根据articletypeId 查询最新发表的十篇文章
    List<ArticleUserVo> selectLatestArticleByTypeId(@Param("articletypeId") Integer articletypeId);

    //根据点赞数 查询最热门的十篇文章
    List<Article> selectHottestArticle();

    //根据点赞数和articletypeId 查询最热门的十篇文章
    List<ArticleUserVo> selectHottestArticleByTypeId(@Param("articletypeId") Integer articletypeId);

    //根据文章id查询作者
    User selectUserByArticleId(@Param("articleId") Integer articleId);

    //根据userid查询这个人最近写的4篇文章
    List<Article> selectLatestArticleByUserId(@Param("userId") Integer userId);

    //根据当前文章id查询上一篇文章
    Article selectPreArticle(Integer articleId);

    //根据当前文章id查询下一篇文章
    Article selectNextArticle(Integer articleId);

}
