.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    const-string/jumbo v0, "TrafficManageService"

    const-string/jumbo v1, "ISimInfoChangeListener onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap9(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->-wrap17(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method
