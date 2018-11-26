.class final Lcom/miui/powercenter/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aPn:Lcom/miui/powercenter/PowerSettings;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preference_key_deep_save_memory_clean_in_lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beK(Lcom/miui/powercenter/PowerSettings;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v1, "preference_key_deep_save_disconnect_in_lockscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beJ(Lcom/miui/powercenter/PowerSettings;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "preference_key_boot_shutdown_ontime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beI(Lcom/miui/powercenter/PowerSettings;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "preference_key_battery_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beH(Lcom/miui/powercenter/PowerSettings;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "preference_key_battery_consume_abnormal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/d;->aPn:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beA(Lcom/miui/powercenter/PowerSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfe(Z)V

    goto :goto_0
.end method
