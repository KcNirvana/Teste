.class final Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setCustomizeDailyLimitWarning(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;J)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2$1;->this$1:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
