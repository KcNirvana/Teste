.class public Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;
.super Ljava/lang/Object;
.source "UGCRepositoryImpl.java"

# interfaces
.implements Lcom/miui/video/biz/ugc/repository/UGCRepository;


# static fields
.field private static final VERSION:Ljava/lang/String; = "v1"


# instance fields
.field private mApi:Lcom/miui/video/biz/ugc/service/UGCApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/miui/video/biz/ugc/service/UGCApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/service/UGCApi;

    iput-object v0, p0, Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;->mApi:Lcom/miui/video/biz/ugc/service/UGCApi;

    return-void
.end method


# virtual methods
.method public feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)Lio/reactivex/Observable;
    .locals 2
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

    iget-object v0, p0, Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;->mApi:Lcom/miui/video/biz/ugc/service/UGCApi;

    const-string v1, "v1"

    invoke-interface {v0, p1, v1}, Lcom/miui/video/biz/ugc/service/UGCApi;->feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getUGCVideo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    iget-object v0, p0, Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;->mApi:Lcom/miui/video/biz/ugc/service/UGCApi;

    const-string v1, "v1"

    invoke-interface {v0, p1, v1}, Lcom/miui/video/biz/ugc/service/UGCApi;->getUGCVideo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
