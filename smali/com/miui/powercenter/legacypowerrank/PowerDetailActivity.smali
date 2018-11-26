.class public Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# instance fields
.field private aFA:Z

.field private aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

.field private aFC:Landroid/view/MenuItem;

.field private aFr:Landroid/view/MenuItem;

.field private final aFs:Landroid/content/BroadcastReceiver;

.field private aFt:Landroid/preference/PreferenceCategory;

.field private aFu:Landroid/app/admin/DevicePolicyManager;

.field private aFv:I

.field private aFw:Landroid/view/MenuItem;

.field private aFx:Z

.field private aFy:[Ljava/lang/String;

.field private aFz:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFx:Z

    new-instance v0, Lcom/miui/powercenter/legacypowerrank/l;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/legacypowerrank/l;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFs:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFA:Z

    return-void
.end method

.method private aQO()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFu:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lmiui/securitycenter/utils/SecurityCenterHelper;->packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFx:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-static {v2}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " should keep alive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    return-void
.end method

.method private aQP()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFr:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x0

    :try_start_0
    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_8

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQR()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v6, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFr:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v4, v4

    if-ne v4, v2, :cond_9

    move v4, v2

    :goto_3
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_4
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQR()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_5
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-static {v1}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should keep alive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-static {v1}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is protected from delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    move-object v5, v1

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v4, v3

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFr:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_5
.end method

.method private aQQ()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFv:I

    invoke-static {p0, v0}, Lcom/miui/powercenter/legacypowerrank/j;->aRL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQR()Z
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFv:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aQS()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/miui/common/b/k;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private aQT(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string/jumbo v2, "package"

    aget-object v4, p2, v6

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-static {p3}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getUserAll()Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p1

    move-object v4, p4

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private aQU()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-static {v0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "is_xspace_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private aQV()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0704fa

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704fb

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/legacypowerrank/m;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/legacypowerrank/m;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private aQW()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQP()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQO()V

    :cond_0
    return-void
.end method

.method static synthetic aQX(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFr:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic aQY(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic aQZ(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aRa(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aRb(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    return-object v0
.end method

.method static synthetic aRc(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    return v0
.end method

.method static synthetic aRd(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic aRe(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFx:Z

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFu:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "preference_key_power_usage_details_title"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    const-string/jumbo v0, "category_key_power_usage_details"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFt:Landroid/preference/PreferenceCategory;

    const-string/jumbo v0, "category_key_power_usage_packages"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFz:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "percent"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    invoke-virtual {v3, v2}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aRP(I)V

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const v2, 0x7f07043c

    invoke-virtual {p0, v2, v4}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aRQ(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "drainType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFv:I

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFB:Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    const-string/jumbo v2, "showMenus"

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFA:Z

    const-string/jumbo v2, "iconPackage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "iconId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/miui/powercenter/legacypowerrank/a;

    iget v5, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-direct {v4, p0, v2, v3, v5}, Lcom/miui/powercenter/legacypowerrank/a;-><init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;Ljava/lang/String;II)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v2, v3}, Lcom/miui/powercenter/legacypowerrank/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v2, "types"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    const-string/jumbo v2, "values"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    aget-wide v6, v4, v0

    const-wide/16 v8, 0x0

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v2, v3, v0

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aget v2, v3, v0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    aget-wide v6, v4, v0

    invoke-static {p0, v6, v7}, Lcom/miui/powercenter/a/d;->bbc(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v6, Lmiui/preference/ValuePreference;

    invoke-direct {v6, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFt:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :pswitch_1
    aget-wide v6, v4, v0

    invoke-static {p0, v6, v7}, Lcom/miui/powercenter/a/d;->bbb(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v6, "%d%%"

    new-array v7, v10, [Ljava/lang/Object;

    aget-wide v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFt:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFt:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFt:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    if-lt v0, v10, :cond_3

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lmiui/preference/ValuePreference;

    invoke-direct {v3, p0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFz:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFz:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFz:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFz:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFy:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->mUid:I

    iget-object v2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFs:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p0, v0, v1, v2}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQT(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x7f07043d
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a042b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    const v0, 0x7f0a042c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFC:Landroid/view/MenuItem;

    const v0, 0x7f0a042d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFr:Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQS()V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aFw:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQV()V

    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQU()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a042b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQW()V

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;->aQW()V

    return-void
.end method
