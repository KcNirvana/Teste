.class public Lcom/miui/applicationlock/ChooseLockTypeActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private afA:Z

.field private afB:Z

.field private afC:Ljava/lang/String;

.field private afy:Lcom/miui/applicationlock/utils/e;

.field private afz:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    const-string/jumbo v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/c;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajw(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, v1, p3}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->setResult(I)V

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    if-nez p3, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "cancel_setting_password"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, p3}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "home_cancel_current_pwd_page"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    goto :goto_0

    :pswitch_1
    if-ne p2, v1, :cond_5

    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cancel_back_to_home"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf989e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->addPreferencesFromResource(I)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v6, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afy:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "external_app_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unlock_set_pattern"

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v3, "unlock_set_pin"

    invoke-virtual {p0, v3}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string/jumbo v4, "unlock_set_password"

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forgot_password_reset"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "setting_password_reset"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afy:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v5}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v7, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    :cond_1
    const-string/jumbo v2, "ModifyPassword"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/ResetChooseAccessControl;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    const-string/jumbo v3, "setting_password_reset"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afB:Z

    :goto_1
    iget-object v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    const-string/jumbo v3, "extra_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    const-string/jumbo v2, "external_app_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unlock_set_pattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    const-string/jumbo v1, "passwordType"

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afz:Landroid/content/Intent;

    const v1, 0xf989e

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v1, "unlock_set_pin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "numeric"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "unlock_set_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mixed"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afC:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/c;->onStart()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afy:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afB:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf989f

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/ChooseLockTypeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity;->afA:Z

    :cond_0
    invoke-super {p0}, Lcom/miui/common/a/c;->onStop()V

    return-void
.end method
