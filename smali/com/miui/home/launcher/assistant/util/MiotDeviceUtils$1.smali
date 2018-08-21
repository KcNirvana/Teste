.class Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;
.super Ljava/lang/Object;
.source "MiotDeviceUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {p2}, Lcom/xiaomi/miot/service/IMiuiService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/miot/service/IMiuiService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$002(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Lcom/xiaomi/miot/service/IMiuiService;)Lcom/xiaomi/miot/service/IMiuiService;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "service_connected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$100(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$200(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils$1;->this$0:Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->access$002(Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;Lcom/xiaomi/miot/service/IMiuiService;)Lcom/xiaomi/miot/service/IMiuiService;

    return-void
.end method
