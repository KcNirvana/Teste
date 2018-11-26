.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$7;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "mina mTrafficStatsReceiver onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get12(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->checkTetheringTrafficStatus()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get14(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficSettingAndSendNotification()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get1(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-get0(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackAnalyticDaily(I)V

    return-void
.end method
