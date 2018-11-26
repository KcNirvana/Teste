.class public Lcom/miui/powercenter/PowerSettings;
.super Lmiui/preference/PreferenceActivity;
.source ""


# instance fields
.field private aOF:Landroid/preference/PreferenceCategory;

.field private aOG:Landroid/database/ContentObserver;

.field private aOH:Landroid/preference/Preference$OnPreferenceClickListener;

.field private aOI:Landroid/preference/CheckBoxPreference;

.field private aOJ:Lmiui/preference/ValuePreference;

.field private aOK:Lmiui/preference/ValuePreference;

.field private aOL:Lmiui/preference/ValuePreference;

.field private aOM:Lmiui/preference/ValuePreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/d;-><init>(Lcom/miui/powercenter/PowerSettings;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/miui/powercenter/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/e;-><init>(Lcom/miui/powercenter/PowerSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOG:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic beA(Lcom/miui/powercenter/PowerSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOI:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic beB(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic beC(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOK:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic beD(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOL:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic beE(Lcom/miui/powercenter/PowerSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bes()I

    move-result v0

    return v0
.end method

.method static synthetic beF(Lcom/miui/powercenter/PowerSettings;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettings;->beu(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic beG(Lcom/miui/powercenter/PowerSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerSettings;->bev(I)V

    return-void
.end method

.method static synthetic beH(Lcom/miui/powercenter/PowerSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bew()V

    return-void
.end method

.method static synthetic beI(Lcom/miui/powercenter/PowerSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bex()V

    return-void
.end method

.method static synthetic beJ(Lcom/miui/powercenter/PowerSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bey()V

    return-void
.end method

.method static synthetic beK(Lcom/miui/powercenter/PowerSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bez()V

    return-void
.end method

.method private bep(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private beq()I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_indicator_style"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ber()I
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->bfg()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private bes()I
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/a;->beZ()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method private bet(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v0, 0x7f07046e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

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

.method private beu(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const v0, 0x7f07046e

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

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

.method private bev(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_indicator_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private bew()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->beq()I

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

    invoke-direct {p0, v4}, Lcom/miui/powercenter/PowerSettings;->bep(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07042b

    invoke-virtual {p0, v4}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/miui/powercenter/h;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/powercenter/h;-><init>(Lcom/miui/powercenter/PowerSettings;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

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

.method private bex()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bey()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->ber()I

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

    invoke-direct {p0, v4}, Lcom/miui/powercenter/PowerSettings;->bet(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070470

    invoke-virtual {p0, v4}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/miui/powercenter/g;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/powercenter/g;-><init>(Lcom/miui/powercenter/PowerSettings;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

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

.method private bez()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bes()I

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

    invoke-direct {p0, v4}, Lcom/miui/powercenter/PowerSettings;->beu(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07046f

    invoke-virtual {p0, v4}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/miui/powercenter/f;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/powercenter/f;-><init>(Lcom/miui/powercenter/PowerSettings;[I[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0, v4}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/PowerSettings;->getString(I)Ljava/lang/String;

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

.method private refresh()V
    .locals 2

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->beq()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettings;->bep(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "preference_key_deep_save_disconnect_in_lockscreen"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOL:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOL:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOL:Lmiui/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->ber()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettings;->bet(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOL:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "preference_key_deep_save_memory_clean_in_lockscreen"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOK:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOK:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOK:Lmiui/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->bes()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettings;->beu(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOK:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "preference_key_battery_consume_abnormal"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOI:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOI:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/powercenter/a;->bff()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOI:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "preference_key_other_category"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOF:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOF:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_1
    const-string/jumbo v0, "preference_key_boot_shutdown_ontime"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOM:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOM:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOM:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-static {}, Lcom/miui/powercenter/a/k;->bch()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOF:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOM:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string/jumbo v0, "preference_key_battery_style"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOH:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->beq()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powercenter/PowerSettings;->bep(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOF:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOJ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "key_memory_clean_time"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/PowerSettings;->aOG:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettings;->aOG:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettings;->aOG:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerSettings;->refresh()V

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    return-void
.end method
