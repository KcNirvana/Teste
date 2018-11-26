.class final Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroid/preference/CheckBoxPreference;

    move-result-object v1

    aget-object v1, v1, v3

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v3, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroid/preference/CheckBoxPreference;

    move-result-object v1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setFirewallWifiPreConfig(I)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    goto :goto_0
.end method
