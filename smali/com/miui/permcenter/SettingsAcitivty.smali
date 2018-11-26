.class public Lcom/miui/permcenter/SettingsAcitivty;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private Ra:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    return-void
.end method

.method private Sr(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/SettingsAcitivty;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/permcenter/e;->SM(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070683

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070684

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/j;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/j;-><init>(Lcom/miui/permcenter/SettingsAcitivty;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/k;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/k;-><init>(Lcom/miui/permcenter/SettingsAcitivty;)V

    const v2, 0x7f0705d6

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/l;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/l;-><init>(Lcom/miui/permcenter/SettingsAcitivty;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic Ss(Lcom/miui/permcenter/SettingsAcitivty;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/SettingsAcitivty;->Ra:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/permcenter/SettingsAcitivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0705bc

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/permcenter/SettingsAcitivty;->Ra:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/permcenter/e;->SH()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/SettingsAcitivty;->Ra:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const v0, 0x7f0705c4

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/install/a;->QE()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/permcenter/install/a;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/permcenter/SettingsAcitivty;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/SettingsAcitivty;->Ra:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/permcenter/SettingsAcitivty;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705bc

    invoke-virtual {p0, v2}, Lcom/miui/permcenter/SettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/SettingsAcitivty;->Sr(Z)V

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0705c4

    invoke-virtual {p0, v2}, Lcom/miui/permcenter/SettingsAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/install/a;->setEnabled(Z)V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/c;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/SettingsAcitivty;->Ra:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/permcenter/SettingsAcitivty;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/e;->SK(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
