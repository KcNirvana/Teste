.class final Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    const-string/jumbo v0, "settings"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "net_control"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/ui/activity/TrafficSortedActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "flow_list"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "assistInfo"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->startVirtualSimActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const-string/jumbo v2, "100001"

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->navigationToTrafficPurchasePage(Landroid/app/Activity;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)V

    const-string/jumbo v0, "flow_buy"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap3(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap7(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap7(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "misim://router?launchfrom=netasistant"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->startMiSimMainActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startSmsDetailActivity(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$3;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->startSmsDetailActivity(Landroid/app/Activity;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a003f -> :sswitch_0
        0x7f0a0047 -> :sswitch_1
        0x7f0a007d -> :sswitch_4
        0x7f0a007f -> :sswitch_2
        0x7f0a0080 -> :sswitch_3
        0x7f0a01dc -> :sswitch_9
        0x7f0a03e5 -> :sswitch_6
        0x7f0a03e6 -> :sswitch_7
        0x7f0a03f2 -> :sswitch_8
        0x7f0a03fc -> :sswitch_9
        0x7f0a03ff -> :sswitch_5
    .end sparse-switch
.end method
