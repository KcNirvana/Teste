.class final Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitTraffic(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z

    return-void
.end method
