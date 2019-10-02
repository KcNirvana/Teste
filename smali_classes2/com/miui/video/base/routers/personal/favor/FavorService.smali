.class public interface abstract Lcom/miui/video/base/routers/personal/favor/FavorService;
.super Ljava/lang/Object;
.source "FavorService.java"


# virtual methods
.method public abstract addFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
.end method

.method public abstract addFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
.end method

.method public abstract deleteFavorPlayList(Lcom/miui/video/base/common/data/ChangeFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
.end method

.method public abstract deleteFavorVideo(Lcom/miui/video/base/common/data/ChangeFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
.end method

.method public abstract detachView()V
.end method

.method public abstract queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V
.end method

.method public abstract startFavorActivity(Landroid/content/Context;Ljava/lang/String;)V
.end method
