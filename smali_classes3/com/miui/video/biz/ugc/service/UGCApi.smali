.class public interface abstract Lcom/miui/video/biz/ugc/service/UGCApi;
.super Ljava/lang/Object;
.source "UGCApi.java"


# virtual methods
.method public abstract feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "ugc/report"
    .end annotation
.end method

.method public abstract getUGCVideo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/biz/ugc/data/UGCPageEntity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method
