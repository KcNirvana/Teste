.class final Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setFirewallWifiPreConfig(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
