.class Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$1;
.super Ljava/lang/Object;
.source "FavorRepositoryImpl.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorVideoListFromDB()Lio/reactivex/Observable;
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
        "Lcom/miui/video/base/database/OVFavorVideoEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$1;->this$0:Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;

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
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/database/FavorDaoUtil;->queryAllFavorVideo()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/base/database/FavorDaoUtil;->queryAllOldFavorVideo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldFavorVideoEntity;->getEid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistInNewDataBase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldFavorVideoEntity;->toNewFavorVideoEntity()Lcom/miui/video/base/database/OVFavorVideoEntity;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideo(Lcom/miui/video/base/database/OldFavorVideoEntity;)V

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/base/database/OldFavorVideoEntity;->toNewFavorVideoEntity()Lcom/miui/video/base/database/OVFavorVideoEntity;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/FavorDaoUtil;->insertFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V

    goto :goto_0

    :cond_1
    const-string v1, "FavorRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FavorRepository getFavorVideoListFromDB favorList size ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
