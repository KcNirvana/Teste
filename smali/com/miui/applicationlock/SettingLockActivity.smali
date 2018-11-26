.class public Lcom/miui/applicationlock/SettingLockActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private aiA:Landroid/content/DialogInterface$OnClickListener;

.field private aiB:Landroid/widget/TextView;

.field private aiC:Landroid/view/View;

.field private aiD:Landroid/preference/CheckBoxPreference;

.field private aiE:Lcom/miui/applicationlock/utils/a;

.field public aiF:Z

.field private aiG:Lmiui/preference/ValuePreference;

.field private aiH:Lmiui/preference/ValuePreference;

.field private aiI:Landroid/preference/Preference;

.field private aiJ:Lmiui/preference/ValuePreference;

.field private aiK:Landroid/content/DialogInterface$OnDismissListener;

.field private aiL:Landroid/preference/Preference;

.field private aiM:Landroid/preference/PreferenceCategory;

.field private aiN:Landroid/preference/CheckBoxPreference;

.field private aiO:Lcom/miui/privacyapps/b/a;

.field private aiP:Landroid/preference/CheckBoxPreference;

.field private aiQ:Landroid/preference/CheckBoxPreference;

.field private aiR:I

.field private air:Z

.field private ais:I

.field private ait:Z

.field private aiu:Landroid/preference/CheckBoxPreference;

.field private aiv:Lmiui/app/AlertDialog;

.field private aiw:Lcom/miui/applicationlock/utils/e;

.field private aix:Landroid/preference/CheckBoxPreference;

.field private aiy:Lmiui/app/AlertDialog;

.field private aiz:Landroid/preference/CheckBoxPreference;

.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->ais:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    new-instance v0, Lcom/miui/applicationlock/ar;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ar;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiK:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/miui/applicationlock/as;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/as;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiA:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private aoP()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07080e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/aA;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/aA;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/aB;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/aB;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/applicationlock/aC;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/aC;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private aoR()V
    .locals 4

    new-instance v0, Lcom/miui/applicationlock/widget/j;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    const v2, 0x7f0b0073

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/applicationlock/widget/j;-><init>(Landroid/content/Context;ILcom/miui/applicationlock/utils/a;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a0100

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiB:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0101

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/aE;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/aE;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private aoS(I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0x7f0d0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v4, v1, v0

    aget-object v5, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private aoT()V
    .locals 3

    new-instance v0, Lcom/miui/applicationlock/aD;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/aD;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/aD;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private aoU()Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v0, "com.miui.home"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "com.miui.home"

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private aoV(Landroid/preference/Preference;)Z
    .locals 1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private aoW()V
    .locals 3

    new-instance v0, Lcom/miui/applicationlock/at;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/at;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/at;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private aoX()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v3}, Lcom/miui/applicationlock/utils/e;->aev()I

    move-result v4

    const/4 v3, -0x1

    if-nez v4, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03006e

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0179

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f0300e3

    invoke-direct {v5, p0, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    new-instance v1, Lcom/miui/applicationlock/au;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/au;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    new-instance v2, Lcom/miui/applicationlock/av;

    invoke-direct {v2, p0, v1}, Lcom/miui/applicationlock/av;-><init>(Lcom/miui/applicationlock/SettingLockActivity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0707a1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    invoke-virtual {v0, v1, v7}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiy:Lmiui/app/AlertDialog;

    return-void

    :cond_1
    if-ne v4, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-eq v4, v1, :cond_0

    move v1, v3

    goto :goto_0
.end method

.method private aoY(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aeA()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addItemFromInflater(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method static synthetic aoZ(Lcom/miui/applicationlock/SettingLockActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->ais:I

    return v0
.end method

.method static synthetic apa(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiu:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic apb(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic apc(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic apd(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    return-object v0
.end method

.method static synthetic ape(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic apf(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiy:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic apg(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aph(Lcom/miui/applicationlock/SettingLockActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic api(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/applicationlock/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    return-object v0
.end method

.method static synthetic apj(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic apk(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic apl(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiJ:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic apm(Lcom/miui/applicationlock/SettingLockActivity;)Lcom/miui/privacyapps/b/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    return-object v0
.end method

.method static synthetic apn(Lcom/miui/applicationlock/SettingLockActivity;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic apo(Lcom/miui/applicationlock/SettingLockActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiR:I

    return v0
.end method

.method static synthetic app(Lcom/miui/applicationlock/SettingLockActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/SettingLockActivity;->ais:I

    return p1
.end method

.method static synthetic apq(Lcom/miui/applicationlock/SettingLockActivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockActivity;->aoS(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic apr(Lcom/miui/applicationlock/SettingLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoW()V

    return-void
.end method

.method static synthetic aps(Lcom/miui/applicationlock/SettingLockActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockActivity;->aoY(I)V

    return-void
.end method


# virtual methods
.method protected aoO()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->aft(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afu(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-static {p0, v0, v1}, Lcom/miui/applicationlock/utils/b;->adU(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/applicationlock/utils/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->air:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoQ()V

    goto :goto_0
.end method

.method protected aoQ()V
    .locals 5

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070857

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f070858

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070859

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/ax;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/ax;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07085a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/ay;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/ay;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/az;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/az;-><init>(Lcom/miui/applicationlock/SettingLockActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->setResult(I)V

    :goto_0
    invoke-super {p0}, Lcom/miui/common/a/c;->finish()V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/c;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiR:I

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->afI(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v2}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->ait:Z

    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    goto :goto_1

    :sswitch_1
    if-ne p2, v0, :cond_3

    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agw(Lmiui/security/SecurityManager;)V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_0

    const-string/jumbo v0, "cancel_back_to_home"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf990c -> :sswitch_1
        0xf995c -> :sswitch_0
        0xf997a -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-super {p0}, Lcom/miui/common/a/c;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    :goto_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiR:I

    const-string/jumbo v0, "modify_password"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiI:Landroid/preference/Preference;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    const-string/jumbo v0, "show_pattern"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->afL(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p0}, Lcom/miui/applicationlock/utils/a;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    const-string/jumbo v0, "fingerprint_lock"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiI:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "lock_mode"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "ac_enable"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiu:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "notification_mask"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiJ:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiJ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoT()V

    const-string/jumbo v0, "convenient_mode"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiu:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aey()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aev()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->aoS(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->aoY(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiJ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiG:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiI:Landroid/preference/Preference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiJ:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    const-string/jumbo v0, "bind_xiaomi_account"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "receive_recommendation"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiP:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiP:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Lcom/miui/privacyapps/b/a;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    const-string/jumbo v0, "privacy_apps_category"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiM:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "privacy_apps_enable"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiN:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "manage_privacy_apps"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "privacy_apps_tutorial"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiL:Landroid/preference/Preference;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoU()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiN:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v1}, Lcom/miui/privacyapps/b/a;->byx()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    const-string/jumbo v1, "privacy_apps_enable"

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setDependency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiL:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiL:Landroid/preference/Preference;

    const-string/jumbo v1, "privacy_apps_enable"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/SettingLockActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_2
    const-string/jumbo v1, "ChooseAppToLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    goto/16 :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiM:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    invoke-super {p0}, Lcom/miui/common/a/c;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/c;->onPause()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiv:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v6, 0xf997a

    const v5, 0xf995c

    const v3, 0xf990c

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show_pattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/miui/applicationlock/SettingLockActivity;->aoV(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->aoV(Landroid/preference/Preference;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->agK(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v1, "modify_password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "ModifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "setting_password_reset"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "fingerprint_lock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/SettingLockActivity;->aoV(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoR()V

    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiK:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    new-instance v1, Lcom/miui/applicationlock/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/o;-><init>(Lcom/miui/applicationlock/SettingLockActivity;Lcom/miui/applicationlock/o;)V

    invoke-virtual {v0, v1, v4}, Lcom/miui/applicationlock/utils/a;->adJ(Lcom/miui/applicationlock/utils/i;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiC:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiC:Landroid/view/View;

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiB:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiB:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiC:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiA:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lmiui/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.MiuiSecurityChooseUnlock"

    invoke-static {p0, v0, v1}, Lcom/miui/applicationlock/utils/m;->afG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v4, p0, Lcom/miui/applicationlock/SettingLockActivity;->ait:Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.NewFingerprintInternalActivity"

    invoke-static {p0, v0, v1}, Lcom/miui/applicationlock/utils/m;->afG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v4, p0, Lcom/miui/applicationlock/SettingLockActivity;->ait:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MiuiSettings;->APP_LOCK_USE_FINGERPRINT_STATE:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->afq(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/miui/applicationlock/utils/m;->agI(Z)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "ac_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoP()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "convenient_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiz:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeE(Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "bind_xiaomi_account"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoO()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "lock_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoX()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v1, "notification_mask"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "applock_setting_mask_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "enter_way"

    const-string/jumbo v2, "mask_notification_security_center"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v1, "manage_privacy_apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "privacy_apps_tutorial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "privacy_apps_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byx()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v1}, Lcom/miui/privacyapps/b/a;->byA()Z

    move-result v1

    if-eqz v1, :cond_10

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v0, v2}, Lcom/miui/privacyapps/b/a;->byB(Z)V

    :cond_10
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiN:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/SettingLockActivity;->aoV(Landroid/preference/Preference;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v1, v0}, Lcom/miui/privacyapps/b/a;->byC(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiN:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoW()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "receive_recommendation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afz(Z)V

    goto/16 :goto_0
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/c;->onRestart()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->air:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->air:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->afL(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adN()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeB()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v2, v0}, Lcom/miui/applicationlock/utils/e;->aeF(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/applicationlock/SettingLockActivity;->aoT()V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiO:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byy()I

    move-result v0

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiH:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f0c0041

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/miui/common/a/c;->onResume()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/SettingLockActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiD:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v2}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/applicationlock/SettingLockActivity;->ait:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "extra_data"

    const-string/jumbo v4, "HappyCodingMain"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0xf990c

    invoke-virtual {p0, v2, v3}, Lcom/miui/applicationlock/SettingLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v3}, Lcom/miui/applicationlock/utils/e;->aew()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiw:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v4, v5}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/miui/applicationlock/SettingLockActivity;->aix:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiP:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afA()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v1}, Lmiui/security/SecurityManager;->getAccessControlPasswordType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_2
    invoke-super {p0}, Lcom/miui/common/a/c;->onStart()V

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiQ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/SettingLockActivity;->aiF:Z

    :cond_0
    invoke-super {p0}, Lcom/miui/common/a/c;->onStop()V

    return-void
.end method
