.class final Lcom/miui/powercenter/savemode/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aOu:Lcom/miui/powercenter/savemode/b;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "enable_power_save_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    new-instance v1, Lcom/miui/powercenter/savemode/d;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/savemode/d;-><init>(Lcom/miui/powercenter/savemode/c;Z)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdU(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdR(I)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string/jumbo v0, "key_ontime_enabled"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-static {v0}, Lcom/miui/powercenter/savemode/b;->beg(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfs(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/savemode/a;->setAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-virtual {v0}, Lcom/miui/powercenter/savemode/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/savemode/a;->bdW(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "auto_exit_power_save_mode"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-static {v0}, Lcom/miui/powercenter/savemode/b;->bef(Lcom/miui/powercenter/savemode/b;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/savemode/c;->aOu:Lcom/miui/powercenter/savemode/b;

    invoke-static {v0}, Lcom/miui/powercenter/savemode/b;->bel(Lcom/miui/powercenter/savemode/b;)V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Lcom/miui/powercenter/a;->bfx(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
