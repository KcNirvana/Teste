.class Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl$2;
.super Ljava/lang/Object;
.source "HistoryRepositoryImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;->getLocalHistoryList()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/database/VideoEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl$2;->this$0:Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryAllLocalVideoHistory()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    const-string v3, "com.miui.videoplayer"

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getIs_hide()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/HideVideoDaoUtil;->getInstance()Lcom/miui/video/base/database/HideVideoDaoUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/HideVideoDaoUtil;->isHideVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->toVideoEntity()Lcom/miui/video/base/database/VideoEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
