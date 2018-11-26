.class public Lcom/miui/appmanager/AMAppStorageDetailsActivity;
.super Lcom/miui/common/a/c;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private aTA:Z

.field private aTB:Landroid/content/DialogInterface$OnClickListener;

.field private aTC:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

.field private aTD:Landroid/view/MenuItem;

.field private aTE:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

.field private aTF:J

.field private aTG:Lmiui/preference/ValuePreference;

.field private aTH:J

.field private aTI:Lmiui/preference/ValuePreference;

.field private aTJ:Landroid/content/DialogInterface$OnClickListener;

.field private aTK:Landroid/content/DialogInterface$OnClickListener;

.field private aTL:Landroid/content/DialogInterface$OnClickListener;

.field private aTM:Landroid/app/admin/DevicePolicyManager;

.field private aTN:Landroid/content/pm/IPackageManager;

.field private aTO:Lcom/miui/appmanager/g;

.field final aTP:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private aTQ:Lmiui/preference/ValuePreference;

.field private aTR:J

.field private aTS:I

.field private aTx:Landroid/content/pm/ApplicationInfo;

.field private aTy:J

.field private aTz:Lmiui/preference/ValuePreference;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/a/c;-><init>()V

    new-instance v0, Lcom/miui/appmanager/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/appmanager/g;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;Lcom/miui/appmanager/g;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    new-instance v0, Lcom/miui/appmanager/W;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/W;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTK:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/X;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/X;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTL:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/Y;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/Y;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTJ:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/Z;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/Z;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTB:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/aa;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/aa;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTP:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method static synthetic blA(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTR:J

    return-wide v0
.end method

.method static synthetic blB(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    return v0
.end method

.method static synthetic blC(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    return-wide p1
.end method

.method static synthetic blD(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTF:J

    return-wide p1
.end method

.method static synthetic blE(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    return-wide p1
.end method

.method static synthetic blF(Lcom/miui/appmanager/AMAppStorageDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTR:J

    return-wide p1
.end method

.method static synthetic blG(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blf()V

    return-void
.end method

.method static synthetic blH(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blg()V

    return-void
.end method

.method static synthetic blI(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blh()V

    return-void
.end method

.method static synthetic blJ(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getSize()V

    return-void
.end method

.method static synthetic blK(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bll()V

    return-void
.end method

.method private blf()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTE:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTE:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    iget-object v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTE:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/n;->bmI(Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTJ:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    const-string/jumbo v0, "clear_data"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhY(Ljava/lang/String;)V

    return-void
.end method

.method private blg()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTC:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTC:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTN:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    iget-object v3, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTC:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/n;->bmH(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearCacheObserver;)V

    const-string/jumbo v0, "clear_cache"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhY(Ljava/lang/String;)V

    return-void
.end method

.method private blh()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/ab;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/ab;-><init>(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/ab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bli()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f070888

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method private blj(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x83

    const/4 v4, 0x0

    const v3, 0x7f0708ce

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07086e

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "key_total_size"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTQ:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "key_code_size"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTG:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "key_data_size"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTI:Lmiui/preference/ValuePreference;

    const-string/jumbo v0, "key_cache_size"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTz:Lmiui/preference/ValuePreference;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTQ:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setValue(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTG:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setValue(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTI:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setValue(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTz:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lmiui/preference/ValuePreference;->setValue(I)V

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method private bll()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTR:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTR:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f070888

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f07088d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f0708cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_8
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f0708ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method static synthetic blm(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic bln(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    return-wide v0
.end method

.method static synthetic blo(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTz:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic blp(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    return v0
.end method

.method static synthetic blq(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic blr(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTF:J

    return-wide v0
.end method

.method static synthetic bls(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTG:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic blt(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    return-wide v0
.end method

.method static synthetic blu(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTI:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method static synthetic blv(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTK:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic blw(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTL:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic blx(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lcom/miui/appmanager/g;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    return-object v0
.end method

.method static synthetic bly(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blz(Lcom/miui/appmanager/AMAppStorageDetailsActivity;)Lmiui/preference/ValuePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTQ:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method private getSize()V
    .locals 6

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mUid:I

    invoke-static {p0, v0, v1}, Lcom/miui/appmanager/n;->bmK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/appmanager/a;->dataSize:J

    iget-wide v4, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, v0, Lcom/miui/appmanager/a;->aRS:J

    iget-wide v4, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTF:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    iget-wide v2, v0, Lcom/miui/appmanager/a;->dataSize:J

    iput-wide v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    iget-wide v2, v0, Lcom/miui/appmanager/a;->aRS:J

    iput-wide v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTF:J

    iget-wide v0, v0, Lcom/miui/appmanager/a;->aRR:J

    iput-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    iget-wide v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTF:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTR:J

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/g;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-wide v2, v0, Lcom/miui/appmanager/a;->aRR:J

    iget-wide v4, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    iget-object v3, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTP:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/n;->bmL(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_1
.end method


# virtual methods
.method public blk(Landroid/content/Loader;Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/c;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2728

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blh()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mUid:I

    iget v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTN:Landroid/content/pm/IPackageManager;

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTN:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blj(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->getSize()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const v0, 0x7f070888

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    const v1, 0x7f02000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTD:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bli()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/c;->onDestroy()V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/g;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/g;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTO:Lcom/miui/appmanager/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/g;->removeMessages(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->blk(Landroid/content/Loader;Ljava/lang/Void;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const-wide/16 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    iget-wide v4, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    iget-boolean v6, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    iget-object v7, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTB:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/appmanager/h;->blN(Landroid/content/Context;Ljava/lang/String;JJZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTH:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTA:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    const/16 v3, 0x2728

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/appmanager/h;->blL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTL:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTy:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTK:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->bll()V

    invoke-super {p0, p1}, Lcom/miui/common/a/c;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/a/c;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTN:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTS:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->aTx:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/appmanager/AMAppStorageDetailsActivity;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
