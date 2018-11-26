.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$16;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v2, "mMobileDataEnableObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/network/f;->aMf(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mobile_policy"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mobile_policy"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap7(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelOpenRoamingWhiteListNotify(Landroid/content/Context;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
