.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$22;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mMiSimCloudDataObserver change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "MiCardActivate1"

    const-string/jumbo v2, "content"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$22;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get4(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setMiSimCloudData(Ljava/lang/String;)Z

    return-void
.end method
