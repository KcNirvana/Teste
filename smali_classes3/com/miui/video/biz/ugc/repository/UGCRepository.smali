.class public interface abstract Lcom/miui/video/biz/ugc/repository/UGCRepository;
.super Ljava/lang/Object;
.source "UGCRepository.java"


# virtual methods
.method public abstract feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUGCVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/biz/ugc/data/UGCPageEntity;",
            ">;"
        }
    .end annotation
.end method
