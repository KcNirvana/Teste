.class final Lcom/miui/antispam/ui/activity/K;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic UK:Lcom/miui/antispam/ui/activity/i;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/i;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->isDestroyed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v2, 0x7f070065

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/preference/RadioButtonPreference;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move v0, v2

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/i;->TX(Lcom/miui/antispam/ui/activity/i;)Lmiui/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/miui/antispam/ui/activity/i;->Uc(Lcom/miui/antispam/ui/activity/i;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/i;->TY(Lcom/miui/antispam/ui/activity/i;)Lmiui/preference/RadioButtonPreferenceCategory;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v3}, Lcom/miui/antispam/ui/activity/i;->Ua(Lcom/miui/antispam/ui/activity/i;)I

    move-result v3

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v1, v4}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    const v1, 0x7f070066

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2, v0}, Lcom/miui/antispam/ui/activity/i;->Ub(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    const v1, 0x7f070067

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2, v0}, Lcom/miui/antispam/ui/activity/i;->Ub(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    const v1, 0x7f070068

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/K;->UK:Lcom/miui/antispam/ui/activity/i;

    invoke-static {v2, v0}, Lcom/miui/antispam/ui/activity/i;->Ub(Lcom/miui/antispam/ui/activity/i;Lmiui/preference/RadioButtonPreference;)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
