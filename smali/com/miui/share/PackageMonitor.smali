.class public abstract Lcom/miui/share/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mRegisteredHandler:Landroid/os/Handler;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/miui/share/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/miui/share/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/share/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyPackagesDisappearing()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didSomePackagesChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBeginPackageChanges()V
    .locals 0

    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v3, p3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p3, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/miui/share/PackageMonitor;->onBeginPackageChanges()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v8, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput-boolean v10, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, p2}, Lcom/miui/share/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput-boolean v7, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/share/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iput v7, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v5}, Lcom/miui/share/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/miui/share/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    :goto_0
    iget v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/miui/share/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    iget v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    if-ne v6, v7, :cond_0

    iget-object v7, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/miui/share/PackageMonitor;->onSomePackagesChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/share/PackageMonitor;->onFinishPackageChanges()V

    return-void

    :cond_2
    iput v9, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v5}, Lcom/miui/share/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_3
    const-string/jumbo v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0, p2}, Lcom/miui/share/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    const-string/jumbo v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    iput v7, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    iget-object v7, p0, Lcom/miui/share/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v3, v5}, Lcom/miui/share/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    :goto_2
    iget v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/miui/share/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_4
    iput v9, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v3, v5}, Lcom/miui/share/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string/jumbo v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0, p2}, Lcom/miui/share/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/share/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v10

    iput v9, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v5, v1}, Lcom/miui/share/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v7, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    :cond_6
    invoke-virtual {p0, v3}, Lcom/miui/share/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-array v8, v7, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/miui/share/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    iput-object v8, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    iget-object v6, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.UID"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v6, v8, v7}, Lcom/miui/share/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v8, "android.intent.action.UID_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/share/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/share/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    move v6, v7

    :cond_a
    iput v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/miui/share/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    array-length v6, v4

    if-ge v2, v6, :cond_0

    aget-object v6, v4, v2

    iget v7, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v6, v7}, Lcom/miui/share/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/share/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const-string/jumbo v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    move v6, v7

    :cond_c
    iput v6, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/miui/share/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/miui/share/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    array-length v6, v4

    if-ge v2, v6, :cond_0

    aget-object v6, v4, v2

    iget v7, p0, Lcom/miui/share/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v6, v7}, Lcom/miui/share/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public onSomePackagesChanged()V
    .locals 0

    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/miui/share/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    sget-object v0, Lcom/miui/share/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v0, Lcom/miui/share/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/miui/share/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/miui/share/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/share/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    return-void
.end method
