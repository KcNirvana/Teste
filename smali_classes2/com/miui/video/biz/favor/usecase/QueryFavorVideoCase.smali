.class public Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "QueryFavorVideoCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseCase<",
        "Lcom/miui/video/base/common/net/model/ModelBase<",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/favor/repository/FavorRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    return-void
.end method


# virtual methods
.method public buildQueryObservable(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/QueryFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    const-string v2, "playlist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorPlayListExist(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->video_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistByVideoId(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/ModelBase;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/base/common/net/model/ModelBase;->setResult(Ljava/lang/Integer;)V

    const-string v3, "you are offline,return local data state"

    invoke-virtual {v0, v3}, Lcom/miui/video/base/common/net/model/ModelBase;->setMsg(Ljava/lang/String;)V

    new-instance v3, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;

    invoke-direct {v3}, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput v1, v3, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;->is_heart:I

    invoke-virtual {v0, v3}, Lcom/miui/video/base/common/net/model/ModelBase;->setData(Ljava/lang/Object;)V

    new-instance p1, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase$1;-><init>(Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;Lcom/miui/video/base/common/net/model/ModelBase;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/favor/usecase/QueryFavorVideoCase;->favorRepository:Lcom/miui/video/biz/favor/repository/FavorRepository;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/favor/repository/FavorRepository;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
