.class public Lcom/miui/video/biz/ugc/presenter/UGCPresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "UGCPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/biz/ugc/view/UGCView;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UGCPresenter"


# instance fields
.field private endTime:J

.field private isLoading:Z

.field private mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

.field private mFeedbackCase:Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

.field private startTime:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    const-string v0, "ugc?page=0"

    iput-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->isLoading:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->startTime:J

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->endTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->endTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->isLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->trackDataSuccess(Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->createAppend(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private createAppend(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "play_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "start"

    iget-wide v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "end"

    iget-wide v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->endTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "result"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private trackDataSuccess(Lcom/miui/video/biz/ugc/data/UGCPageEntity;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageEntity;->getData()Lcom/miui/video/biz/ugc/data/UGCPageData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/data/UGCPageData;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/ugc/data/UGCEntity;

    iget-object v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "small_video"

    const-string v2, ""

    const-string v3, "small_videos_res"

    invoke-static {v1, v2, v3}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->createAppend(ILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;

    invoke-direct {v0}, Lcom/miui/video/biz/ugc/repository/impl/UGCRepositoryImpl;-><init>()V

    new-instance v1, Lcom/miui/video/biz/ugc/usecase/UGCCase;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/ugc/usecase/UGCCase;-><init>(Lcom/miui/video/biz/ugc/repository/UGCRepository;)V

    iput-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCaseList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;-><init>(Lcom/miui/video/biz/ugc/repository/UGCRepository;)V

    iput-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mFeedbackCase:Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mFeedbackCase:Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->isLoading:Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/usecase/UGCCase;->dispose()V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mFeedbackCase:Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;->dispose()V

    return-void
.end method

.method public feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mFeedbackCase:Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;

    new-instance v1, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$3;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$3;-><init>(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/ugc/usecase/UGCFeedbackCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public loadMore()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->isLoading:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->getView()Lcom/miui/video/common/library/base/impl/IView;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/view/UGCView;

    invoke-interface {v0}, Lcom/miui/video/biz/ugc/view/UGCView;->onLoadMoreFail()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->isLoading:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->startTime:J

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->url:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$2;-><init>(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/ugc/usecase/UGCCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public refreshData()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->startTime:J

    const-string v0, "ugc?page=0"

    iput-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->mCase:Lcom/miui/video/biz/ugc/usecase/UGCCase;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->url:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$1;-><init>(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/ugc/usecase/UGCCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
