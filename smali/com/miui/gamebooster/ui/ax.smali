.class final Lcom/miui/gamebooster/ui/ax;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic dZ:Lcom/miui/gamebooster/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "gb_thermal_supported_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "gb_thermal_supported"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cM(Lcom/miui/gamebooster/ui/i;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/i;->db(Lcom/miui/gamebooster/ui/i;Z)Z

    const-string/jumbo v0, "SettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BroadcastReceiver Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/i;->cM(Lcom/miui/gamebooster/ui/i;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cE(Lcom/miui/gamebooster/ui/i;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/i;->cF(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "gb_update_setting_fragment"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->dd(Lcom/miui/gamebooster/ui/i;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ax;->dZ:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->de(Lcom/miui/gamebooster/ui/i;)V

    goto :goto_0
.end method
