.class public Lcom/miui/video/biz/favor/router/FavorServiceImpl;
.super Ljava/lang/Object;
.source "FavorServiceImpl.java"

# interfaces
.implements Lcom/miui/video/base/routers/personal/favor/FavorService;


# annotations
.annotation build Lio/github/prototypez/appjoint/core/ServiceProvider;
.end annotation


# instance fields
.field public mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

.field public mQueryFavorPresenter:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    new-instance v0, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-direct {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mQueryFavorPresenter:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    return-void
.end method


# virtual methods
.method public addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object p2, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v1, "favorite_click_do"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p1, Lcom/miui/video/base/database/OVFavorPlayListEntity;->source:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    const-string v1, "favorite"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object p2, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v1, "favorite_click_do"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p1, Lcom/miui/video/base/database/OVFavorVideoEntity;->source:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    const-string v1, "favorite"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object p2, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v1, "favorite_click_cancel"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->source:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    const-string v1, "favorite"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    iget-object p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object p2, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    const-string v1, "favorite_click_cancel"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    iget-object v1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->source:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "module"

    const-string v1, "favorite"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    iget-object v2, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->video_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    iget-object p1, p1, Lcom/miui/video/base/common/data/ChangeFavorBody;->playlist_id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public detachView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mChangeFavorPresenter:Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/ChangeFavorPresenter;->detach()V

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mQueryFavorPresenter:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->detach()V

    return-void
.end method

.method public queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mQueryFavorPresenter:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->attach(Lcom/miui/video/common/library/base/impl/IView;)V

    iget-object p2, p0, Lcom/miui/video/biz/favor/router/FavorServiceImpl;->mQueryFavorPresenter:Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/favor/presenter/QueryFavorPresenter;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;)V

    return-void
.end method

.method public startFavorActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/miui/video/biz/favor/FavorActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
