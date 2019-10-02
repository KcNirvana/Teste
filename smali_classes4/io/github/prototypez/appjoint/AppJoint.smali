.class public Lio/github/prototypez/appjoint/AppJoint;
.super Ljava/lang/Object;
.source "AppJoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/prototypez/appjoint/AppJoint$SingletonHolder;
    }
.end annotation


# instance fields
.field private moduleApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private routerInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private routersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routerInstanceMap:Ljava/util/Map;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/longvideo/LongVideoApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/longvideo/LongVideoApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/galleryplus/GalleryPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/GalleryPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;

    invoke-direct {v1}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/pgc/application/PgcApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/pgc/application/PgcApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/videoplus/VideoPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/VideoPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/longvideo/LongVideoApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/longvideo/LongVideoApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/galleryplus/GalleryPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/GalleryPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;

    invoke-direct {v1}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/pgc/application/PgcApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/pgc/application/PgcApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/videoplus/VideoPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/VideoPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/longvideo/LongVideoApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/longvideo/LongVideoApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/galleryplus/GalleryPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/GalleryPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;

    invoke-direct {v1}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/pgc/application/PgcApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/pgc/application/PgcApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/videoplus/VideoPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/VideoPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/longvideo/LongVideoApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/longvideo/LongVideoApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/galleryplus/GalleryPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/galleryplus/GalleryPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/player/online/OnlinePlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;

    invoke-direct {v1}, Lcom/miui/videoplayer/biz/service/preload/LocalServerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/pgc/application/PgcApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/pgc/application/PgcApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/biz/videoplus/VideoPlusApplication;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/VideoPlusApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;

    invoke-direct {v1}, Lcom/miui/video/player/service/localvideoplayer/LocalPlayerApplication;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/personal/PersonalRouterService;

    const-class v2, Lcom/miui/video/global/routers/PersonalServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/common/CommonService;

    const-class v2, Lcom/miui/video/global/routers/CommonServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/longvideo/LongVideoService;

    const-class v2, Lcom/miui/video/biz/longvideo/router/LongVideoServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/shortvideo/ShortVideoService;

    const-class v2, Lcom/miui/video/biz/shortvideo/router/ShortVideoServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/search/OnlineSearchService;

    const-class v2, Lcom/miui/video/biz/search/router/OnlineSearchServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/galleryplus/GalleryPlusService;

    const-class v2, Lcom/miui/video/videoplus/router/GalleryPlusServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    const-class v2, Lcom/miui/video/biz/player/online/router/OnlinePlayerServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/localplayer/LocalPlayerService;

    const-class v2, Lcom/miui/video/biz/player/local/router/LocalPlayerServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/localserver/LocalServerService;

    const-class v2, Lcom/miui/videoplayer/biz/service/preload/router/LocalServerServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/personal/pgc/SubscribeService;

    const-class v2, Lcom/miui/video/biz/pgc/router/SubscribeServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/pgc/PgcService;

    const-class v2, Lcom/miui/video/biz/pgc/router/AuthorServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/videoplus/VideoPlusService;

    const-class v2, Lcom/miui/video/biz/videoplus/router/VideoPlusServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/feedback/FeedbackService;

    const-class v2, Lcom/miui/video/feedback/router/FeedbackServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/personal/favor/FavorService;

    const-class v2, Lcom/miui/video/biz/favor/router/FavorServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    const-class v1, Lcom/miui/video/base/routers/personal/history/HistoryService;

    const-class v2, Lcom/miui/video/biz/history/router/HistoryServiceImpl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lio/github/prototypez/appjoint/AppJoint$1;)V
    .locals 0

    invoke-direct {p0}, Lio/github/prototypez/appjoint/AppJoint;-><init>()V

    return-void
.end method

.method public static get()Lio/github/prototypez/appjoint/AppJoint;
    .locals 1

    sget-object v0, Lio/github/prototypez/appjoint/AppJoint$SingletonHolder;->INSTANCE:Lio/github/prototypez/appjoint/AppJoint;

    return-object v0
.end method

.method public static declared-synchronized service(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lio/github/prototypez/appjoint/AppJoint;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v2

    iget-object v2, v2, Lio/github/prototypez/appjoint/AppJoint;->routerInstanceMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v2

    iget-object v2, v2, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v1

    iget-object v1, v1, Lio/github/prototypez/appjoint/AppJoint;->routerInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v1

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lio/github/prototypez/appjoint/AppJoint;->get()Lio/github/prototypez/appjoint/AppJoint;

    move-result-object v1

    iget-object v1, v1, Lio/github/prototypez/appjoint/AppJoint;->routerInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    :try_start_0
    const-class v2, Landroid/content/ContextWrapper;

    const-string v3, "attachBaseContext"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public moduleApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onLowMemory()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onTerminate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->moduleApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, p1}, Landroid/app/Application;->onTrimMemory(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public routersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/github/prototypez/appjoint/AppJoint;->routersMap:Ljava/util/Map;

    return-object v0
.end method
