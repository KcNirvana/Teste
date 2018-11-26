.class public Lcom/miui/gamebooster/ui/i;
.super Lmiui/preference/PreferenceFragment;
.source ""


# instance fields
.field private final aV:Z

.field private aW:Ljava/lang/String;

.field private aX:Lmiui/preference/ValuePreference;

.field private aY:Landroid/preference/CheckBoxPreference;

.field private aZ:Z

.field private bA:Landroid/preference/Preference$OnPreferenceClickListener;

.field private bB:Lmiui/preference/ValuePreference;

.field private bC:Landroid/preference/CheckBoxPreference;

.field private bD:Z

.field private bE:Landroid/preference/CheckBoxPreference;

.field private bF:Z

.field private bG:Z

.field private bH:Landroid/preference/CheckBoxPreference;

.field private bI:Z

.field private ba:Landroid/preference/CheckBoxPreference;

.field private bb:Z

.field private bc:Lcom/miui/gamebooster/c/b;

.field private bd:Landroid/preference/CheckBoxPreference;

.field private be:Z

.field private bf:Landroid/preference/PreferenceCategory;

.field private bg:Landroid/preference/CheckBoxPreference;

.field private bh:Z

.field private bi:Landroid/preference/CheckBoxPreference;

.field private bj:Z

.field private bk:Lmiui/preference/ValuePreference;

.field private bl:Ljava/lang/String;

.field private bm:Lmiui/preference/ValuePreference;

.field private bn:Landroid/preference/CheckBoxPreference;

.field private bo:Z

.field private bp:Landroid/support/v4/content/LocalBroadcastManager;

.field private bq:Landroid/preference/PreferenceCategory;

.field private br:Landroid/preference/CheckBoxPreference;

.field private bs:Lmiui/preference/ValuePreference;

.field private bt:Landroid/preference/CheckBoxPreference;

.field private bu:Z

.field private bv:Landroid/preference/PreferenceCategory;

.field private bw:Landroid/preference/CheckBoxPreference;

.field private bx:Z

.field private by:Z

.field private bz:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->aV:Z

    new-instance v0, Lcom/miui/gamebooster/ui/ao;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/ao;-><init>(Lcom/miui/gamebooster/ui/i;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/ap;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/ap;-><init>(Lcom/miui/gamebooster/ui/i;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic cA(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->br:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cB(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic cC(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bt:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cD(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bu:Z

    return v0
.end method

.method static synthetic cE(Lcom/miui/gamebooster/ui/i;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bv:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic cF(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bw:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cG(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bx:Z

    return v0
.end method

.method static synthetic cH(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->by:Z

    return v0
.end method

.method static synthetic cI(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bC:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cJ(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bD:Z

    return v0
.end method

.method static synthetic cK(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bE:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cL(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bF:Z

    return v0
.end method

.method static synthetic cM(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bG:Z

    return v0
.end method

.method static synthetic cN(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bH:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cO(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bI:Z

    return v0
.end method

.method static synthetic cP(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->aZ:Z

    return p1
.end method

.method static synthetic cQ(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bb:Z

    return p1
.end method

.method static synthetic cR(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->be:Z

    return p1
.end method

.method static synthetic cS(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bh:Z

    return p1
.end method

.method static synthetic cT(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bj:Z

    return p1
.end method

.method static synthetic cU(Lcom/miui/gamebooster/ui/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/i;->bl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic cV(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bo:Z

    return p1
.end method

.method static synthetic cW(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bu:Z

    return p1
.end method

.method static synthetic cX(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bx:Z

    return p1
.end method

.method static synthetic cY(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->by:Z

    return p1
.end method

.method static synthetic cZ(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bD:Z

    return p1
.end method

.method private cd()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/aq;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aq;-><init>(Lcom/miui/gamebooster/ui/i;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/aq;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private ce()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "gb_update_setting_fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "gb_thermal_supported_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/gamebooster/ui/ax;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/ax;-><init>(Lcom/miui/gamebooster/ui/i;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/i;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bp:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/i;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private cf()V
    .locals 6

    const v5, 0x7f07097e

    const v4, 0x7f070932

    const v3, 0x7f070906

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tN(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tH(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aW:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->aW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070980

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aW:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aW:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07097f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aW:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070981

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private cg()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07097c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v2

    const v2, 0x7f07097b

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07091f

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/av;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/ui/av;-><init>(Lcom/miui/gamebooster/ui/i;)V

    invoke-virtual {v1, v4, v0, v2}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const v0, 0x7f07097f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v3

    move v5, v3

    move-object v3, v0

    move v0, v5

    goto :goto_0

    :cond_1
    const v0, 0x7f07097d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private ch()V
    .locals 9

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const v3, 0x7f070987

    invoke-virtual {p0, v3}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070988

    invoke-virtual {p0, v4}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070989

    invoke-virtual {p0, v5}, Lcom/miui/gamebooster/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v4, v6, v2

    aput-object v5, v6, v0

    aput-object v3, v6, v1

    iget-object v7, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "gesture"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0708eb

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/ui/aw;

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/miui/gamebooster/ui/aw;-><init>(Lcom/miui/gamebooster/ui/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v0, v2}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_0
    const-string/jumbo v0, "close"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private ci(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->ba:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bv:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bf:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bv:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->br:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/miui/gamebooster/a/F;->ik()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/I;->iu(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->ba:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string/jumbo v0, "game_IsAntiMsg"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic cj(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aX:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic ck(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aY:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cl(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->aZ:Z

    return v0
.end method

.method static synthetic cm(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->ba:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cn(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bb:Z

    return v0
.end method

.method static synthetic co(Lcom/miui/gamebooster/ui/i;)Lcom/miui/gamebooster/c/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    return-object v0
.end method

.method static synthetic cp(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bd:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cq(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->be:Z

    return v0
.end method

.method static synthetic cr(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bg:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cs(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bh:Z

    return v0
.end method

.method static synthetic ct(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bi:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cu(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bj:Z

    return v0
.end method

.method static synthetic cv(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic cw(Lcom/miui/gamebooster/ui/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cx(Lcom/miui/gamebooster/ui/i;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic cy(Lcom/miui/gamebooster/ui/i;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic cz(Lcom/miui/gamebooster/ui/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bo:Z

    return v0
.end method

.method static synthetic da(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bF:Z

    return p1
.end method

.method static synthetic db(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bG:Z

    return p1
.end method

.method static synthetic dc(Lcom/miui/gamebooster/ui/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/i;->bI:Z

    return p1
.end method

.method static synthetic dd(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->cd()V

    return-void
.end method

.method static synthetic de(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->cf()V

    return-void
.end method

.method static synthetic df(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->cg()V

    return-void
.end method

.method static synthetic dg(Lcom/miui/gamebooster/ui/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->ch()V

    return-void
.end method

.method static synthetic dh(Lcom/miui/gamebooster/ui/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/i;->ci(Z)V

    return-void
.end method


# virtual methods
.method public cb()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07095c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07095d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/at;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/at;-><init>(Lcom/miui/gamebooster/ui/i;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/au;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/au;-><init>(Lcom/miui/gamebooster/ui/i;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public cc()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070954

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070955

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/ar;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/ar;-><init>(Lcom/miui/gamebooster/ui/i;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/as;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/as;-><init>(Lcom/miui/gamebooster/ui/i;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0200e1

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bp:Landroid/support/v4/content/LocalBroadcastManager;

    const-string/jumbo v0, "pref_game_shortcut"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->ba:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_game_box"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_slip"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bE:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "preference_category_key_net_booster"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "preference_category_key_performance_booster"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bv:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "preference_category_key_anti_disturb_msg"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bf:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "pref_performance_booster"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bw:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_net_booster"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->br:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_app_back_self_start"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aY:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_game_net_priority"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bt:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_shield_keyboard"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bC:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_value_message_anti_disturb"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->aX:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_wlan_change_protection"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bH:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_setting_detail"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bB:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_net_booster_wifi"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_call_handsfree"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bn:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_forbid_autosync"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bi:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_call_handsfree_mute"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "pref_data_booster"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bd:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "pref_forbid_auto_bright"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/i;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/i;->bg:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bB:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aX:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bB:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->br:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aY:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bt:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bC:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bd:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bH:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bn:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bi:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bg:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->ba:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bE:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bz:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bB:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bm:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->aX:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bA:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bb:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bb:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/miui/gamebooster/ui/i;->ci(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->cd()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->do()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bG:Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bc:Lcom/miui/gamebooster/c/b;

    invoke-static {v4}, Lcom/miui/gamebooster/c/b;->tB(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->br:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bs:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/miui/gamebooster/a/F;->ik()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bq:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/i;->bG:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bv:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bk:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->ce()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/i;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->bE:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/i;->bp:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/i;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/i;->cf()V

    return-void
.end method
