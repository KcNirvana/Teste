.class final Lcom/miui/gamebooster/ui/ao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic dN:Lcom/miui/gamebooster/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "pref_game_net_priority"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uu(Z)V

    return v1

    :cond_0
    const-string/jumbo v3, "pref_performance_booster"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/i;->cM(Lcom/miui/gamebooster/ui/i;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/i;->cc()V

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uv(Z)V

    return v1

    :cond_2
    const-string/jumbo v3, "pref_shield_keyboard"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->ui(Z)V

    return v1

    :cond_3
    const-string/jumbo v3, "pref_app_back_self_start"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "key_auto_clean_memory_start"

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v3, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uj(Z)V

    return v1

    :cond_5
    const-string/jumbo v3, "pref_wlan_change_protection"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "key_wlan_change_protection"

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v3, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->ux(Z)V

    return v1

    :cond_7
    const-string/jumbo v3, "pref_net_booster"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tX(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cB(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    return v1

    :cond_8
    const-string/jumbo v3, "pref_call_handsfree"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v2, :cond_9

    iget-object v3, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v3}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "gb_handsfree"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_9
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->ur(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->cx(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    return v1

    :cond_a
    const-string/jumbo v3, "pref_forbid_autosync"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->un(Z)V

    return v1

    :cond_b
    const-string/jumbo v3, "pref_data_booster"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/i;->cb()V

    return v0

    :cond_c
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uk(Z)V

    return v1

    :cond_d
    const-string/jumbo v3, "pref_forbid_auto_bright"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->um(Z)V

    return v1

    :cond_e
    const-string/jumbo v3, "pref_game_shortcut"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v2, :cond_f

    iget-object v3, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v3}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07090a

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/i;->dh(Lcom/miui/gamebooster/ui/i;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uo(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_0
    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->ol()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SettingFragment"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_11
    const-string/jumbo v3, "pref_slip"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ao;->dN:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->uw(Z)V

    return v1

    :cond_12
    return v0
.end method
