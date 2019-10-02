.class public Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;
.super Ljava/lang/Object;
.source "FavorRepositoryImpl.java"

# interfaces
.implements Lcom/miui/video/biz/favor/repository/FavorRepository;


# instance fields
.field private changeFavor:Ljava/lang/String;

.field private deleteFavor:Ljava/lang/String;

.field private firstPlayListPage:Ljava/lang/String;

.field private firstVideoPage:Ljava/lang/String;

.field private item_type:I

.field private mApi:Lcom/miui/video/base/common/net/api/RetroApi;

.field private nextPlayListPage:Ljava/lang/String;

.field private nextVideoPage:Ljava/lang/String;

.field private page:I

.field private snycFavor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->page:I

    iput v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->item_type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextVideoPage:Ljava/lang/String;

    const-string v0, "content/hearthis?version=v1&item_type=1&limit=10"

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->firstVideoPage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextPlayListPage:Ljava/lang/String;

    const-string v0, "content/hearthis?version=v1&item_type=2&limit=10"

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->firstPlayListPage:Ljava/lang/String;

    const-string v0, "content/heartdelete?version=v1"

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->deleteFavor:Ljava/lang/String;

    const-string v0, "content/heartsync?version=v1"

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->snycFavor:Ljava/lang/String;

    const-string v0, "content/heart?version=v1"

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->changeFavor:Ljava/lang/String;

    const-class v0, Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-static {v0}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/api/RetroApi;

    iput-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    return-void
.end method

.method static synthetic lambda$getFavorPlayList$3(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/base/common/net/model/ModelData;

    return-object p0
.end method

.method public static synthetic lambda$getFavorPlayList$4(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextPlayListPage:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getFavorPlayList$5(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setUploaded(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setAuthor_name(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setAuthorId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getEid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setEid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count_text(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setItem_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideoId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setPlaylist_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setImage_url(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->isFromServer:Z

    return-object v0
.end method

.method static synthetic lambda$getFavorVideoList$0(Lcom/miui/video/base/common/net/model/ModelBase;)Lcom/miui/video/base/common/net/model/ModelData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/base/common/net/model/ModelData;

    return-object p0
.end method

.method public static synthetic lambda$getFavorVideoList$1(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getNext()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextVideoPage:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getFavorVideoList$2(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/database/OVFavorVideoEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUploaded(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthor_name(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthorId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setDuration(J)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getEid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setEid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTarget(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setItem_type(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setVideoId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setPlaylist_id(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setImage_url(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/miui/video/base/database/OVFavorVideoEntity;->isFromServer:Z

    return-object v0
.end method


# virtual methods
.method public addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->insertFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getChangeFavorBody(I)Lcom/miui/video/base/common/data/ChangeFavorBody;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->item_type:Ljava/lang/String;

    iget p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->is_heart:I

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->changeFavorState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->insertFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getChangeFavorBody(I)Lcom/miui/video/base/common/data/ChangeFavorBody;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->item_type:Ljava/lang/String;

    iget p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->is_heart:I

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->changeFavorState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public createLocalResult()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/base/common/net/model/ModelBase;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/model/ModelBase;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/ModelBase;->setResult(Ljava/lang/Integer;)V

    const-string v1, "you are offline,delete local data"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/net/model/ModelBase;->setMsg(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$3;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;Lcom/miui/video/base/common/net/model/ModelBase;)V

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteFavorPlayList(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->playlistId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorPlayListByPlayId(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->deleteFavor:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/base/common/data/DeleteFavorBody;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3, p2}, Lcom/miui/video/base/common/data/DeleteFavorBody;-><init>(IILjava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/miui/video/base/common/net/api/RetroApi;->deleteFavorPlayList(Ljava/lang/String;Lcom/miui/video/base/common/data/DeleteFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/ChangeFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorPlayListByPlayId(Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->item_type:Ljava/lang/String;

    iget p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->is_heart:I

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->changeFavorState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/data/ChangeFavorBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->eid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByEid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByVid(Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->item_type:Ljava/lang/String;

    iget p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->is_heart:I

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->changeFavorState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public deleteFavorVideoList(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartDelIdParam;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->eId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByEid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/video/base/common/data/ContentHeartDelIdParam;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByVid(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->createLocalResult()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->deleteFavor:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/base/common/data/DeleteFavorBody;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, p2}, Lcom/miui/video/base/common/data/DeleteFavorBody;-><init>(IILjava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/miui/video/base/common/net/api/RetroApi;->deleteFavorVideoList(Ljava/lang/String;Lcom/miui/video/base/common/data/DeleteFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorPlayList(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getFavorPlayList(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorPlayListFromDB()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->firstPlayListPage:Ljava/lang/String;

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextPlayListPage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextPlayListPage:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextPlayListPage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-interface {p2, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->getFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$iDdDefVbT5w7aQFDeValbuDH3zQ;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$iDdDefVbT5w7aQFDeValbuDH3zQ;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$d-ZnDH9_bvpdEYQ9GtHkLzJ4Swg;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$d-ZnDH9_bvpdEYQ9GtHkLzJ4Swg;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$GUaiywiTiQc8cgJy8qOPMpWjIoY;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$GUaiywiTiQc8cgJy8qOPMpWjIoY;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$QgPOTXW6sgSXXItErEGd_MkLIss;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$QgPOTXW6sgSXXItErEGd_MkLIss;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$S-059Pa83LkhI8ex1T59SV9a8sM;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$S-059Pa83LkhI8ex1T59SV9a8sM;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getFavorPlayListFromDB()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$2;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorVideoList(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getFavorVideoList(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorVideoListFromDB()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->firstVideoPage:Ljava/lang/String;

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextVideoPage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextVideoPage:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->nextVideoPage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    invoke-interface {p2, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->getFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$4dI4HDGI8SAC9LxGyRknF8EueWk;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$LWHKw1fREW4bI6AyjfPY8e20Tmg;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$LWHKw1fREW4bI6AyjfPY8e20Tmg;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$GUaiywiTiQc8cgJy8qOPMpWjIoY;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$GUaiywiTiQc8cgJy8qOPMpWjIoY;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$DekuP0YjMGjcgIs2fnqLggInpfI;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$QgPOTXW6sgSXXItErEGd_MkLIss;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$QgPOTXW6sgSXXItErEGd_MkLIss;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$PMcQipigtANKXr_LQnPxZn2-Bmc;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$lbJRbesuGyR5GvBQsDLMNVUSqQk;->INSTANCE:Lcom/miui/video/biz/favor/repository/-$$Lambda$FavorRepositoryImpl$lbJRbesuGyR5GvBQsDLMNVUSqQk;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getFavorVideoListFromDB()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl$1;-><init>(Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMoreFavorPlayList(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorPlayList(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getMoreFavorVideoList(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->getFavorVideoList(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)Lio/reactivex/Observable;
    .locals 3
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

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->video_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/base/common/net/api/RetroApi;->queryFavorState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public syncFavorPlayList(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->snycFavor:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/base/common/data/SyncFavorBody;

    invoke-direct {v2, p1, p2}, Lcom/miui/video/base/common/data/SyncFavorBody;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/miui/video/base/common/net/api/RetroApi;->syncFavorPlayList(Ljava/lang/String;Lcom/miui/video/base/common/data/SyncFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public syncFavorVideoList(ILjava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/data/ContentHeartSyncEntity;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->mApi:Lcom/miui/video/base/common/net/api/RetroApi;

    iget-object v1, p0, Lcom/miui/video/biz/favor/repository/FavorRepositoryImpl;->snycFavor:Ljava/lang/String;

    new-instance v2, Lcom/miui/video/base/common/data/SyncFavorBody;

    invoke-direct {v2, p1, p2}, Lcom/miui/video/base/common/data/SyncFavorBody;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/miui/video/base/common/net/api/RetroApi;->syncFavorVideoList(Ljava/lang/String;Lcom/miui/video/base/common/data/SyncFavorBody;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
