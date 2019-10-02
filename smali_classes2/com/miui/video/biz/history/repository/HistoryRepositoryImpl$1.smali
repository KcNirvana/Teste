.class Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl$1;
.super Ljava/lang/Object;
.source "HistoryRepositoryImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;->getOnlineHistoryList()Lio/reactivex/Observable;
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
        "Lcom/miui/video/base/database/OVHistoryEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl$1;->this$0:Lcom/miui/video/biz/history/repository/HistoryRepositoryImpl;

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
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryAllOnLineVideoHistory()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/base/database/HistoryDaoUtil;->queryAllOldOnLineVideoHistory()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OldOVHistoryEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldOVHistoryEntity;->getOffset()I

    move-result v3

    const/16 v4, 0x1388

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldOVHistoryEntity;->getEid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/HistoryDaoUtil;->isHistoryExistInNewDataBase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/HistoryDaoUtil;->getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldOVHistoryEntity;->toOVHistoryEntity()Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldOVHistoryEntity;->toOVHistoryEntity()Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
