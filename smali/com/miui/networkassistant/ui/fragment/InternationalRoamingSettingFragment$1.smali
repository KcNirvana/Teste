.class final Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingDailyLimitTraffic(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z

    return-void
.end method
