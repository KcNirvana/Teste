.class final Lcom/miui/powercenter/autotask/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic aLP:Lcom/miui/powercenter/autotask/k;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/k;->aWs(Lcom/miui/powercenter/autotask/k;)Lmiui/preference/ValuePreference;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/k;->aWu(Lcom/miui/powercenter/autotask/k;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v1, "key_add_new_operations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/k;->aWv(Lcom/miui/powercenter/autotask/k;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_restore_when_charged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->aYj(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/k;->aKH:Lcom/miui/powercenter/autotask/AutoTask;

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/autotask/AutoTask;->aYj(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "battery_level_down"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "battery_level_up"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "hour_minute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "hour_minute_duration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/k;->aWu(Lcom/miui/powercenter/autotask/k;)V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/miui/powercenter/autotask/o;->aXs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v1, v0}, Lcom/miui/powercenter/autotask/k;->aWx(Lcom/miui/powercenter/autotask/k;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "auto_clean_memory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/k;->aWw(Lcom/miui/powercenter/autotask/k;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/D;->aLP:Lcom/miui/powercenter/autotask/k;

    invoke-static {v0}, Lcom/miui/powercenter/autotask/k;->aWt(Lcom/miui/powercenter/autotask/k;)V

    goto/16 :goto_0
.end method
