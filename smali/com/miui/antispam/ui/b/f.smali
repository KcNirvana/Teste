.class public Lcom/miui/antispam/ui/b/f;
.super Lcom/miui/antispam/ui/b/e;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/e;-><init>()V

    return-void
.end method

.method private VZ()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WK:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WI:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setEnabled(Z)V

    return-void
.end method

.method private Wa()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v4

    const/4 v3, -0x1

    if-nez v4, :cond_0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070134

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/b/f;->WL:[Ljava/lang/String;

    new-instance v3, Lcom/miui/antispam/ui/b/w;

    invoke-direct {v3, p0}, Lcom/miui/antispam/ui/b/w;-><init>(Lcom/miui/antispam/ui/b/f;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    if-ne v4, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public Wb()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamSettingsSharedForSims(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WF:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpamEnableForSim(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WL:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$AntiSpam;->getNotificationType(Landroid/content/Context;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/f;->VZ()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/b/e;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WM:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WM:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->WR:Lcom/miui/antispam/ui/view/LabelPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/miui/antispam/ui/b/f;->Wb()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WN:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamSettingsSharedForSims(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/f;->VZ()V

    return v3

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WF:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setAntiSpamEnableForSim(Landroid/content/Context;IZ)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antispam/ui/b/f;->Wa()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WK:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/MsgInterceptSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WI:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/CallInterceptSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/BlackListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/b/f;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/antispam/ui/activity/WhiteListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/b/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/b/e;->onResume()V

    new-instance v0, Lcom/miui/antispam/ui/b/v;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/b/v;-><init>(Lcom/miui/antispam/ui/b/f;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/b/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
