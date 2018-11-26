.class final Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder$1;->this$1:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder$1;->this$1:Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->-wrap0(Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method
