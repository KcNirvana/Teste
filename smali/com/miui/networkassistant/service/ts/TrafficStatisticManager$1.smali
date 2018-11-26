.class final Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->-get0(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->sendEmptyMessage(I)Z

    return-void
.end method
