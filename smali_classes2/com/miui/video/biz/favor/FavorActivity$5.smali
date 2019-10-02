.class final Lcom/miui/video/biz/favor/FavorActivity$5;
.super Ljava/lang/Object;
.source "FavorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/FavorActivity;->delteleDBFavorVideo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$favorList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$5;->val$favorList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$5;->val$favorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/OVFavorVideoEntity;

    iget-boolean v2, v1, Lcom/miui/video/base/database/OVFavorVideoEntity;->isFromServer:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByVid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->getEid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->deleteFavorVideoByEid(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
