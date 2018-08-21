.class Lcom/miui/personalassistant/favorite/ui/FavTabFragment$3;
.super Landroid/os/Handler;
.source "FavTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/FavTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$3;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCtime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavTabFragment$3;->this$0:Lcom/miui/personalassistant/favorite/ui/FavTabFragment;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/favorite/ui/FavTabFragment;->access$500(Lcom/miui/personalassistant/favorite/ui/FavTabFragment;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    return-void
.end method
