.class Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;
.super Landroid/os/Handler;
.source "FavoriteShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/service/FavoriteShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    const v1, 0x1b0b05f1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->access$000(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/personalassistant/favorite/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v0, "FavoriteShareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start-end:notification take mills="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->access$100(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
