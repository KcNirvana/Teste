.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$14;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private lastState:Landroid/net/NetworkInfo$State;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->lastState:Landroid/net/NetworkInfo$State;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->lastState:Landroid/net/NetworkInfo$State;

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    :goto_1
    and-int/2addr v0, v2

    invoke-static {p1}, Lcom/miui/common/network/f;->aMi(Landroid/content/Context;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get11(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v2

    and-int/2addr v0, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    and-int/2addr v0, v2

    invoke-static {p1}, Lcom/miui/common/network/f;->aMf(Landroid/content/Context;)Z

    move-result v2

    and-int v3, v0, v2

    iput-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->lastState:Landroid/net/NetworkInfo$State;

    :cond_0
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap12(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
