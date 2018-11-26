.class final Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;
.super Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$5;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get6(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
