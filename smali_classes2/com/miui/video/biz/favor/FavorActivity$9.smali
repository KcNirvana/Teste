.class Lcom/miui/video/biz/favor/FavorActivity$9;
.super Ljava/lang/Object;
.source "FavorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/favor/FavorActivity;->syncFavorVideoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/favor/FavorActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/favor/FavorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/favor/FavorActivity$9;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/favor/FavorActivity$9;->this$0:Lcom/miui/video/biz/favor/FavorActivity;

    invoke-static {v0}, Lcom/miui/video/biz/favor/FavorActivity;->access$900(Lcom/miui/video/biz/favor/FavorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;

    invoke-static {}, Lcom/miui/video/base/database/FavorDaoUtil;->getInstance()Lcom/miui/video/base/database/FavorDaoUtil;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/video/base/common/data/ContentHeartSyncEntity;->feedId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/miui/video/base/database/FavorDaoUtil;->changeFavorVideoUPloadFlag(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    return-void
.end method
