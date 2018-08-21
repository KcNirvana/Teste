.class Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "MiotDeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

.field final synthetic val$callback:Lcom/xiaomi/miot/service/ICallback;

.field final synthetic val$did:Ljava/lang/String;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$did:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$on:Z

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$callback:Lcom/xiaomi/miot/service/ICallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$100(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$000(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Lcom/xiaomi/miot/service/IMiuiService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$000(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Lcom/xiaomi/miot/service/IMiuiService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$did:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$on:Z

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$2;->val$callback:Lcom/xiaomi/miot/service/ICallback;

    invoke-interface {v1, v2, v3, v4}, Lcom/xiaomi/miot/service/IMiuiService;->setDeviceOn(Ljava/lang/String;ZLcom/xiaomi/miot/service/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
