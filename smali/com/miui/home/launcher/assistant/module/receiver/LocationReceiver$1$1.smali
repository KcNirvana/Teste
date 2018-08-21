.class Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;
.super Ljava/lang/Object;
.source "LocationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    const-string/jumbo v7, "LocationReceiver"

    const-string/jumbo v8, "onReceive sLocationCallback  %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$000()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$1$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v7, "status"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$000()Ljava/util/Map;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v7, "com.miui.personalassistant.getcurrentlocation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$102(Z)Z

    if-eqz v6, :cond_1

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    invoke-static {v7, v9}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v7, "LocationReceiver"

    const-string/jumbo v9, "getCurrentLocation status: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v9, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    monitor-exit v8

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v7, "latitude"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "longitude"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v7, "LocationReceiver"

    const-string/jumbo v9, "mLocationRC:lat:%s lng:%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v7, v9, v10}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LocationReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive LocationCallback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :try_start_3
    const-string/jumbo v7, "com.miui.personalassistant.getetalineinfo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$000()Ljava/util/Map;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$000()Ljava/util/Map;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    const-string/jumbo v9, ""

    invoke-interface {v7, v9}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;->getEtaInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v7, "etaInfo"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->access$000()Ljava/util/Map;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    invoke-interface {v7, v5}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;->getEtaInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
