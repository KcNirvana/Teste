.class final Lcom/miui/gamebooster/ui/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic dO:Lcom/miui/gamebooster/ui/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "pref_setting_detail"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/ui/i;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "pref_net_booster_wifi"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_detail_wifibooster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/ui/i;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pref_call_handsfree_mute"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/gamebooster/ui/WifiBoosterDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_handsfree_mute"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/ui/i;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "pref_value_message_anti_disturb"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->df(Lcom/miui/gamebooster/ui/i;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "pref_game_box"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/ap;->dO:Lcom/miui/gamebooster/ui/i;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/i;->dg(Lcom/miui/gamebooster/ui/i;)V

    goto :goto_0
.end method
