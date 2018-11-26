.class public Lcom/miui/optimizemanage/settings/b;
.super Lmiui/preference/PreferenceFragment;
.source ""


# instance fields
.field private xr:Landroid/preference/CheckBoxPreference;

.field private xs:Lmiui/preference/ValuePreference;

.field private xt:Lmiui/preference/ValuePreference;

.field private xu:Lmiui/preference/ValuePreference;

.field private xv:Landroid/preference/PreferenceCategory;

.field private xw:Landroid/preference/Preference$OnPreferenceClickListener;

.field private xx:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/optimizemanage/settings/d;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/settings/d;-><init>(Lcom/miui/optimizemanage/settings/b;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private zh()I
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->beZ()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private zi(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v0, 0x7f07046e

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c0018

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zj(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const v0, 0x7f070409

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zk()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zh()I

    move-result v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget v4, v2, v0

    if-ne v4, v3, :cond_0

    :goto_1
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v2, v1

    invoke-direct {p0, v4}, Lcom/miui/optimizemanage/settings/b;->zi(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07046f

    invoke-virtual {p0, v4}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/miui/optimizemanage/settings/e;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/optimizemanage/settings/e;-><init>(Lcom/miui/optimizemanage/settings/b;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {p0, v1}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private zl()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zC()I

    move-result v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget v4, v2, v0

    if-ne v4, v3, :cond_0

    :goto_1
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v2, v1

    invoke-direct {p0, v4}, Lcom/miui/optimizemanage/settings/b;->zj(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070405

    invoke-virtual {p0, v4}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/miui/optimizemanage/settings/f;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/optimizemanage/settings/f;-><init>(Lcom/miui/optimizemanage/settings/b;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {p0, v1}, Lcom/miui/optimizemanage/settings/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private zm()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private zo()V
    .locals 2

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zC()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/optimizemanage/settings/b;->zj(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zp(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xr:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic zq(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xs:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic zr(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xt:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic zs(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic zt(Lcom/miui/optimizemanage/settings/b;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xx:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic zu(Lcom/miui/optimizemanage/settings/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zk()V

    return-void
.end method

.method static synthetic zv(Lcom/miui/optimizemanage/settings/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zl()V

    return-void
.end method

.method static synthetic zw(Lcom/miui/optimizemanage/settings/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zm()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->zn()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "preference_key_lock_app_manage"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xs:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "preference_key_memory_clean_lock_screen"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xt:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "preference_key_memory_occupy_notify"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "preference_key_cpu_over_load"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xr:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "preference_key_notify_manage_category"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xv:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "preference_key_recommend_news"

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/b;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xx:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xs:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xs:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xt:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xt:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zJ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xv:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xu:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xr:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xx:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xw:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->zn()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zo()V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xt:Lmiui/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/b;->zh()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/settings/b;->zi(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xr:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zB()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/b;->xx:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zK()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public zn()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/optimizemanage/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->zx()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/b;->xs:Lmiui/preference/ValuePreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/c;->zL(I)V

    return-void
.end method
