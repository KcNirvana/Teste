.class public Lcom/miui/appmanager/ApplicationsDetailsActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/miui/appmanager/widget/e;


# static fields
.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private aRV:Landroid/app/ActivityManager;

.field private aRW:Ljava/util/HashSet;

.field private aRX:Landroid/widget/TextView;

.field private aRY:Landroid/widget/TextView;

.field private aRZ:Landroid/widget/ImageView;

.field private aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aSB:Landroid/content/pm/IPackageManager;

.field private aSC:Z

.field private aSD:Z

.field private aSE:Z

.field private aSF:Z

.field private aSG:Z

.field private aSH:Z

.field private aSI:Z

.field private aSJ:Z

.field private aSK:Landroid/view/MenuItem;

.field private aSL:Landroid/view/MenuItem;

.field private aSM:Ljava/lang/String;

.field private aSN:Lcom/miui/appmanager/d;

.field private aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aSP:Ljava/lang/String;

.field private aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aSR:Lcom/miui/appmanager/e;

.field private aSS:Landroid/content/pm/IPackageDeleteObserver$Stub;

.field private aST:I

.field private aSU:Z

.field private aSV:Ljava/util/HashMap;

.field private aSW:Lcom/miui/appmanager/widget/AppDetailListTitleView;

.field private aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aSY:I

.field private aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aSa:Landroid/app/AppOpsManager;

.field private aSb:I

.field private aSc:Landroid/content/pm/ApplicationInfo;

.field private aSd:Z

.field private aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

.field private aSf:J

.field private aSg:Z

.field private aSh:Landroid/content/DialogInterface$OnClickListener;

.field private aSi:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

.field private aSj:Landroid/view/MenuItem;

.field private aSk:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

.field private aSl:J

.field private aSm:J

.field private aSn:Lcom/miui/appmanager/widget/AppDetailListTitleView;

.field private aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

.field private aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

.field private aSq:Ljava/lang/String;

.field private aSr:Landroid/content/DialogInterface$OnClickListener;

.field private aSs:Landroid/content/DialogInterface$OnClickListener;

.field private aSt:Landroid/content/DialogInterface$OnClickListener;

.field private aSu:Landroid/app/admin/DevicePolicyManager;

.field private aSv:Z

.field private aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

.field private aSx:J

.field private aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

.field private aSz:Z

.field private aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

.field private aTb:D

.field private aTc:Lcom/miui/powerkeeper/IPowerKeeper;

.field private aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

.field private aTe:Ljava/lang/String;

.field private aTf:Landroid/content/res/Resources;

.field private aTg:Lcom/miui/appmanager/widget/AMScrollView;

.field final aTh:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

.field private aTj:Z

.field private aTk:Z

.field private aTl:I

.field private aTm:I

.field private aTn:Z

.field private aTo:I

.field private aTp:Z

.field private aTq:Lcom/miui/appmanager/c;

.field private mActiveSlotNum:I

.field private mConn:Landroid/content/ServiceConnection;

.field private mEmptyView:Landroid/view/View;

.field private mIsSystem:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mSize:J

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Lcom/miui/appmanager/d;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/d;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSl:J

    iput-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTn:Z

    iput-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    iput-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    iput-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSV:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/appmanager/x;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/x;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTh:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTc:Lcom/miui/powerkeeper/IPowerKeeper;

    new-instance v0, Lcom/miui/appmanager/y;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/y;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/appmanager/z;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/z;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSs:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/A;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/A;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSt:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/B;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/B;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSr:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/C;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/C;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSh:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/D;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/D;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSS:Landroid/content/pm/IPackageDeleteObserver$Stub;

    new-instance v0, Lcom/miui/appmanager/F;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/F;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTq:Lcom/miui/appmanager/c;

    return-void
.end method

.method private biF()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biW()V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should keep alive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is protected from delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private biG()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSi:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSi:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSi:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/n;->bmH(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearCacheObserver;)V

    const-string/jumbo v0, "clear_cache"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    return-void
.end method

.method private biH()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    invoke-static {v3, v2}, Lcom/miui/appmanager/n;->bmN(Landroid/content/pm/IPackageManager;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/miui/appmanager/n;->bmO(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)V

    :cond_0
    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0708c2

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v1, 0x7f070877

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setSummary(I)V

    iput-boolean v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSE:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ApplicationsDetailActivity"

    const-string/jumbo v3, "mUsbManager.clearDefaults"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private biI(I)V
    .locals 2

    new-instance v0, Lcom/miui/appmanager/J;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/J;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/J;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "disable_app"

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/appmanager/a/a;->bhW(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "enable_app"

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/appmanager/a/a;->bhW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private biJ()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRV:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    iput-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private biK()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRV:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    if-ne v1, v4, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private biL()Lcom/miui/powercenter/legacypowerrank/e;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRr()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_1
    return-object v4
.end method

.method private biM()D
    .locals 6

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRq()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRr()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/miui/powercenter/legacypowerrank/e;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRt()D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0

    :cond_2
    return-wide v2
.end method

.method private biN()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const v4, 0x7f070899

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSD:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0708a1

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSI:Z

    if-nez v0, :cond_1

    const v0, 0x7f07089a

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSI:Z

    if-eqz v3, :cond_2

    const v0, 0x7f070898

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_2
    iget-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSF:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    if-eqz v3, :cond_8

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const v0, 0x7f0708d2

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSD:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const v0, 0x7f0708d3

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const v0, 0x7f070897

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method private biO()Ljava/lang/String;
    .locals 9

    const v8, 0x7f070899

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v3

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "_message"

    invoke-static {p0, v4, v5}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "_keyguard"

    invoke-static {p0, v5, v6}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    monitor-exit v2

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    move v2, v1

    :goto_0
    if-ne v3, v7, :cond_1

    const v0, 0x7f07089a

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    xor-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_2

    const v0, 0x7f0708c4

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_3

    const v0, 0x7f07089b

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_7

    invoke-virtual {p0, v8}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const v1, 0x7f07089c

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p0, v8}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const v0, 0x7f07089d

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private biP()V
    .locals 6

    new-instance v0, Lcom/miui/appmanager/e;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/e;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.miui.klo.bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/permcenter/e;->SI(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_3

    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v4, v0, Lcom/miui/appmanager/e;->aTs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/miui/appmanager/e;->aTs:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v4, v0, Lcom/miui/appmanager/e;->aTu:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/miui/appmanager/e;->aTu:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v4, v0, Lcom/miui/appmanager/e;->aTt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/miui/appmanager/e;->aTt:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private biQ()V
    .locals 8

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-static {p0, v0, v1}, Lcom/miui/appmanager/n;->bmK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object v0

    iget-wide v2, v0, Lcom/miui/appmanager/a;->aRR:J

    iget-wide v4, v0, Lcom/miui/appmanager/a;->aRS:J

    add-long/2addr v2, v4

    iget-wide v4, v0, Lcom/miui/appmanager/a;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, v0, Lcom/miui/appmanager/a;->dataSize:J

    iget-wide v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    iget-wide v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    iget-wide v2, v0, Lcom/miui/appmanager/a;->dataSize:J

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    iget-wide v2, v0, Lcom/miui/appmanager/a;->aRR:J

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    iget-wide v0, v0, Lcom/miui/appmanager/a;->aRS:J

    iput-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSl:J

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/d;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTh:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/n;->bmL(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0
.end method

.method private biR()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/T;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/T;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/T;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private biS(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Landroid/os/Bundle;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "title"

    invoke-static {p1, p2}, Lcom/miui/powercenter/legacypowerrank/j;->aRM(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/e;->getValue()D

    move-result-wide v0

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/f;->aRt()D

    move-result-wide v4

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    const-string/jumbo v3, "percent"

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "iconPackage"

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "iconId"

    invoke-static {p2}, Lcom/miui/powercenter/legacypowerrank/j;->aRN(Lcom/miui/powercenter/legacypowerrank/e;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/miui/powercenter/legacypowerrank/e;->getUid()I

    move-result v0

    if-ltz v0, :cond_0

    const-string/jumbo v0, "uid"

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "drainType"

    iget v1, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "showMenus"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFG:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v1, v7, [I

    const v0, 0x7f07044f

    aput v0, v1, v6

    new-array v0, v7, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    :goto_0
    const-string/jumbo v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object v2

    :pswitch_1
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/16 v0, 0x9

    new-array v0, v0, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v7

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFK:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFL:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    aput-wide v4, v0, v8

    const-wide/16 v4, 0x0

    const/4 v3, 0x7

    aput-wide v4, v0, v3

    const-wide/16 v4, 0x0

    const/16 v3, 0x8

    aput-wide v4, v0, v3

    goto :goto_0

    :pswitch_2
    const v0, 0x7f07044f

    const v1, 0x7f07043f

    filled-new-array {v0, v1}, [I

    move-result-object v1

    new-array v0, v9, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFP:D

    aput-wide v4, v0, v7

    goto :goto_0

    :pswitch_3
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    new-array v0, v8, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v7

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v8, [I

    fill-array-data v1, :array_2

    new-array v0, v8, [D

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFO:J

    long-to-double v4, v4

    aput-wide v4, v0, v6

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFH:J

    long-to-double v4, v4

    aput-wide v4, v0, v7

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFI:J

    long-to-double v4, v4

    aput-wide v4, v0, v9

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFJ:J

    long-to-double v4, v4

    aput-wide v4, v0, v10

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFM:J

    long-to-double v4, v4

    const/4 v3, 0x4

    aput-wide v4, v0, v3

    iget-wide v4, p2, Lcom/miui/powercenter/legacypowerrank/e;->aFN:J

    long-to-double v4, v4

    const/4 v3, 0x5

    aput-wide v4, v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f070440
        0x7f07044c
        0x7f07043e
        0x7f07043d
        0x7f07044d
        0x7f07044e
    .end array-data

    :array_1
    .array-data 4
        0x7f07044c
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f07043e
        0x7f07043d
    .end array-data

    :array_2
    .array-data 4
        0x7f07044f
        0x7f070449
        0x7f07044a
        0x7f07044b
        0x7f07043e
        0x7f07043d
    .end array-data
.end method

.method private biT()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/S;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/S;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/S;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private biU()J
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    invoke-static {p0}, Lcom/miui/common/b/e;->aHD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildMobileDataUsage(IZ)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method private biV()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSu:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f070888

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method private biW()V
    .locals 7

    const v1, 0x7f0708b4

    const v0, 0x7f0708b3

    const v6, 0x7f020019

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "com.jeejen.family.miui"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.amazon.appmanager"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSu:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.xiaomi.mipicks"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "com.facemoji.lite.xiaomi"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.kikaoem.xiaomi.qisiemoji.inputmethod"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTn:Z

    if-eqz v4, :cond_3

    iput v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    const v0, 0x7f07089e

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v4, :cond_9

    iput v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    sget-object v4, Lcom/miui/appmanager/h;->aTW:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_4

    :goto_1
    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    :cond_6
    const v0, 0x7f0708b3

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    move v0, v2

    :goto_2
    move v3, v0

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bja()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0708b3

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    move v0, v2

    goto :goto_2

    :cond_8
    const v0, 0x7f0708b4

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move v3, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_a

    sget v0, Lmiui/R$drawable;->action_button_delete_light:I

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    const v0, 0x7f07087a

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    goto/16 :goto_0

    :cond_a
    iput v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    iput v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    goto/16 :goto_0
.end method

.method private biX()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSk:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSk:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSk:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/n;->bmI(Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSr:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    const-string/jumbo v0, "clear_data"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    return-void
.end method

.method private biY()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :try_start_1
    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    invoke-static {v1, v3}, Lcom/miui/appmanager/n;->bmN(Landroid/content/pm/IPackageManager;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    if-nez v0, :cond_0

    move v0, v3

    :goto_2
    if-nez v0, :cond_1

    move v0, v1

    :goto_3
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_3
.end method

.method private biZ()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.greenpoint.android.mc10086.activity"

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic bjA(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRY:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bjB(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSa:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic bjC(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSb:I

    return v0
.end method

.method static synthetic bjD(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic bjE(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailCheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    return-object v0
.end method

.method static synthetic bjF(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    return-wide v0
.end method

.method static synthetic bjG(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    return v0
.end method

.method static synthetic bjH(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic bjI(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSl:J

    return-wide v0
.end method

.method static synthetic bjJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    return-wide v0
.end method

.method static synthetic bjK(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailTitleView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    return-object v0
.end method

.method static synthetic bjL(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bjM(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSs:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic bjN(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSt:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic bjO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic bjP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/IPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic bjQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    return v0
.end method

.method static synthetic bjR(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSD:Z

    return v0
.end method

.method static synthetic bjS(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSF:Z

    return v0
.end method

.method static synthetic bjT(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    return v0
.end method

.method static synthetic bjU(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSI:Z

    return v0
.end method

.method static synthetic bjV(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic bjW(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic bjX(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    return-object v0
.end method

.method static synthetic bjY(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailRightSummaryView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    return-object v0
.end method

.method static synthetic bjZ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private bja()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRW:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method private bjb()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07087b

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setIconAttribute(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07087c

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/N;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/N;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const v2, 0x7f07087d

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07087e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bjc()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bje(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x3

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v0, v2, :cond_2

    if-ne v1, v3, :cond_1

    iput-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    iput-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    :goto_0
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    iget-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSl:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/d;->sendEmptyMessage(I)Z

    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_2
    return-void

    :cond_1
    iput-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biR()V

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private bjf()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {p0, v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should keep alive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    invoke-virtual {v0, v6}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->big(Z)V

    :cond_3
    return-void

    :cond_4
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    :cond_5
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f070888

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f07088d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f0708cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f0708ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private bjg()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/appmanager/R;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/R;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private bjh()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_from_appmanagermainactivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/appmanager/G;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/G;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/G;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bji(Z)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0708c0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0708c1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/U;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/U;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/V;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/V;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private bjj(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/I;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/I;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const v2, 0x7f0708b3

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bjk(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/M;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/M;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const v2, 0x7f07087a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bjl()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0708b5

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0708b6

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/K;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/K;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

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

.method private bjm()V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSI:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTp:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSD:Z

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTk:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSF:Z

    if-eqz v0, :cond_0

    new-array v1, v5, [Ljava/lang/String;

    const v0, 0x7f0708d2

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const v0, 0x7f0708d3

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-array v0, v5, [Z

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTk:Z

    aput-boolean v2, v0, v4

    :goto_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070896

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/miui/appmanager/O;

    invoke-direct {v3, p0}, Lcom/miui/appmanager/O;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    invoke-virtual {v2, v1, v0, v3}, Lmiui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/P;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/P;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const v2, 0x7f07087d

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07087e

    invoke-virtual {v0, v1, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const v0, 0x7f070897

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    new-array v0, v4, [Z

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSF:Z

    if-eqz v0, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    const v0, 0x7f070898

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const v0, 0x7f0708d2

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const v0, 0x7f0708d3

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    new-array v0, v2, [Z

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTp:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    aput-boolean v2, v0, v4

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTk:Z

    aput-boolean v2, v0, v5

    goto :goto_0

    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    const v0, 0x7f070898

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const v0, 0x7f070897

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-array v0, v5, [Z

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTp:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    aput-boolean v2, v0, v4

    goto/16 :goto_0
.end method

.method private bjn(I)V
    .locals 3

    const v1, 0x7f0704fa

    const v0, 0x7f0704fb

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/L;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/L;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void

    :pswitch_0
    const v1, 0x7f07089f

    const v0, 0x7f0708a0

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSJ:Z

    if-eqz v2, :cond_2

    const v1, 0x7f070883

    const v0, 0x7f070881

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjc()Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f0708bc

    const v0, 0x7f0708bd

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/appmanager/h;->blO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f070882

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bjo()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "size"

    iget-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bjp()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private bjq()V
    .locals 8

    const-wide/16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "pkg_label"

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pkg_name"

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v6, v7, v0}, Lcom/miui/permcenter/e;->SJ(Landroid/content/Context;JLjava/lang/String;)Lcom/miui/permcenter/c;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    const-string/jumbo v3, "action"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/miui/permcenter/g;->SU(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "white_list"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string/jumbo v0, "white_list"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private bjr()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.NETWORKASSISTANT_APP_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "package_name"

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTe:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "sort_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "from_appmanager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sim_slot_num_tag"

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bjs()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$NotificationFilterActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, ":miui:starting_window_label"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bjt()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_pkgname"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bju()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package:"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bjv()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biL()Lcom/miui/powercenter/legacypowerrank/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biS(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/e;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bjw()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.HIDDEN_APPS_CONFIG_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.powerkeeper"

    const-string/jumbo v2, "com.miui.powerkeeper.ui.HiddenAppsConfigActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package_label"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkg_name"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkg_label"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ApplicationsDetailActivity"

    const-string/jumbo v2, "HiddenAppsConfigActivity not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private bjx(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSJ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSS:Landroid/content/pm/IPackageDeleteObserver$Stub;

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/appmanager/n;->bmJ(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSS:Landroid/content/pm/IPackageDeleteObserver$Stub;

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/appmanager/n;->bmJ(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    invoke-static {p1}, Lcom/miui/appmanager/h;->blO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/appmanager/n;->bmJ(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0
.end method

.method private bjy()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTn:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v5}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjn(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "app_description_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "app_description_content"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjl()V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjj(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjc()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-direct {p0, v6}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjn(I)V

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjk(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v6}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjn(I)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, v5}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biI(I)V

    goto/16 :goto_0
.end method

.method static synthetic bjz(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mActiveSlotNum:I

    return v0
.end method

.method static synthetic bkA(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSE:Z

    return p1
.end method

.method static synthetic bkB(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSF:Z

    return p1
.end method

.method static synthetic bkC(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSI:Z

    return p1
.end method

.method static synthetic bkD(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bkE(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSV:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic bkF(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSY:I

    return p1
.end method

.method static synthetic bkG(Lcom/miui/appmanager/ApplicationsDetailsActivity;D)D
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTb:D

    return-wide p1
.end method

.method static synthetic bkH(Lcom/miui/appmanager/ApplicationsDetailsActivity;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTc:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object p1
.end method

.method static synthetic bkI(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    return-wide p1
.end method

.method static synthetic bkJ(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    return p1
.end method

.method static synthetic bkK(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTk:Z

    return p1
.end method

.method static synthetic bkL(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    return p1
.end method

.method static synthetic bkM(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTp:Z

    return p1
.end method

.method static synthetic bkN(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biY()Z

    move-result v0

    return v0
.end method

.method static synthetic bkO(Lcom/miui/appmanager/ApplicationsDetailsActivity;)D
    .locals 2

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biM()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic bkP(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bkQ(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bkR(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biU()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic bkS(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biG()V

    return-void
.end method

.method static synthetic bkT(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biI(I)V

    return-void
.end method

.method static synthetic bkU(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biJ()V

    return-void
.end method

.method static synthetic bkV(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biP()V

    return-void
.end method

.method static synthetic bkW(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biQ()V

    return-void
.end method

.method static synthetic bkX(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biT()V

    return-void
.end method

.method static synthetic bkY(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biX()V

    return-void
.end method

.method static synthetic bkZ(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bje(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic bka(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bkb(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aST:I

    return v0
.end method

.method static synthetic bkc(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSU:Z

    return v0
.end method

.method static synthetic bkd(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/powerkeeper/IPowerKeeper;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTc:Lcom/miui/powerkeeper/IPowerKeeper;

    return-object v0
.end method

.method static synthetic bke(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailRightSummaryView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    return-object v0
.end method

.method static synthetic bkf(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bkg(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic bkh(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AMScrollView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTg:Lcom/miui/appmanager/widget/AMScrollView;

    return-object v0
.end method

.method static synthetic bki(Lcom/miui/appmanager/ApplicationsDetailsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    return-wide v0
.end method

.method static synthetic bkj(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Lcom/miui/appmanager/widget/AppDetailBannerItemView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    return-object v0
.end method

.method static synthetic bkk(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTj:Z

    return v0
.end method

.method static synthetic bkl(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTk:Z

    return v0
.end method

.method static synthetic bkm(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    return v0
.end method

.method static synthetic bkn(Lcom/miui/appmanager/ApplicationsDetailsActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    return v0
.end method

.method static synthetic bko(Lcom/miui/appmanager/ApplicationsDetailsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTp:Z

    return v0
.end method

.method static synthetic bkp(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mActiveSlotNum:I

    return p1
.end method

.method static synthetic bkq(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSb:I

    return p1
.end method

.method static synthetic bkr(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    return-object p1
.end method

.method static synthetic bks(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSd:Z

    return p1
.end method

.method static synthetic bkt(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    return-wide p1
.end method

.method static synthetic bku(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSl:J

    return-wide p1
.end method

.method static synthetic bkv(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    return-wide p1
.end method

.method static synthetic bkw(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic bkx(Lcom/miui/appmanager/ApplicationsDetailsActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSx:J

    return-wide p1
.end method

.method static synthetic bky(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSC:Z

    return p1
.end method

.method static synthetic bkz(Lcom/miui/appmanager/ApplicationsDetailsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSD:Z

    return p1
.end method

.method static synthetic bla(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjf()V

    return-void
.end method

.method static synthetic blb(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjl()V

    return-void
.end method

.method static synthetic blc(Lcom/miui/appmanager/ApplicationsDetailsActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjn(I)V

    return-void
.end method

.method static synthetic bld(Lcom/miui/appmanager/ApplicationsDetailsActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjx(Ljava/lang/String;I)V

    return-void
.end method

.method private initData()V
    .locals 7

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/appmanager/h;->aTU:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTn:Z

    const v0, 0x7f07087a

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTm:I

    sget v0, Lmiui/R$drawable;->action_button_delete_light:I

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTl:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.miui.powerkeeper"

    const-string/jumbo v5, "com.miui.powerkeeper.PowerKeeperBackgroundService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mConn:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4, v2, v5}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSu:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRV:Landroid/app/ActivityManager;

    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AMScrollView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTg:Lcom/miui/appmanager/widget/AMScrollView;

    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRX:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRX:Landroid/widget/TextView;

    const v4, 0x7f0708ac

    invoke-virtual {p0, v4}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRY:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRY:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRY:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailTitleView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailTitleView;->setAppLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {v0, v1, v4}, Lcom/miui/a/d/a/a;->bub(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    const v6, 0x7f070879

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailTitleView;->bie(Ljava/lang/String;)V

    :goto_1
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f020045

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f07086e

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iget-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    invoke-static {p0, v4, v5}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setSummary(Ljava/lang/String;)V

    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f020046

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f07086f

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setTitle(I)V

    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f020043

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setIcon(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const v4, 0x7f070870

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setTitle(I)V

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailListTitleView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSW:Lcom/miui/appmanager/widget/AppDetailListTitleView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSW:Lcom/miui/appmanager/widget/AppDetailListTitleView;

    const v4, 0x7f070871

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailListTitleView;->setTitle(I)V

    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailListTitleView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSn:Lcom/miui/appmanager/widget/AppDetailListTitleView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSn:Lcom/miui/appmanager/widget/AppDetailListTitleView;

    const v4, 0x7f0708c7

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailListTitleView;->setTitle(I)V

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    const v4, 0x7f070872

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->setTitle(I)V

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biZ()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->setVisibility(I)V

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v4, 0x7f0708bb

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    :goto_4
    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.miui.hybrid"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIA(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->bis(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v4, 0x7f0708d5

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    :cond_0
    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v4, 0x7f070874

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-eqz v0, :cond_a

    move v0, v3

    :goto_6
    invoke-virtual {v4, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v4, 0x7f070875

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->bit(Z)V

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSG:Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "android.permission.INTERNET"

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSz:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSz:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSG:Z

    if-eqz v0, :cond_c

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    :goto_8
    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v3, 0x7f070876

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setTitle(I)V

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v3, 0x7f0708b9

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v3, 0x7f0708ba

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setSummary(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/miui/appmanager/H;

    invoke-direct {v3, p0}, Lcom/miui/appmanager/H;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRX:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->bix(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTg:Lcom/miui/appmanager/widget/AMScrollView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AMScrollView;->biv(Lcom/miui/appmanager/widget/e;)V

    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRZ:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRZ:Landroid/widget/ImageView;

    const v3, 0x7f0708a5

    invoke-virtual {p0, v3}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRZ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    const v3, 0x7f0d000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRW:Ljava/util/HashSet;

    array-length v4, v3

    move v0, v1

    :goto_9
    if-ge v0, v4, :cond_d

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRW:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_6

    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v3

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v4, 0x7f070873

    invoke-virtual {v0, v4}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    goto/16 :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_6

    :cond_b
    move v0, v1

    goto/16 :goto_7

    :cond_c
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v3, 0x7f070896

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-boolean v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->bit(Z)V

    goto/16 :goto_8

    :cond_d
    const v0, 0x7f0708c3

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSY:I

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v0, v3, :cond_e

    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSa:Landroid/app/AppOpsManager;

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSJ:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    :goto_a
    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aST:I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSa:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aST:I

    iget-object v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/miui/appmanager/n;->bmF(Landroid/app/AppOpsManager;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSb:I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSb:I

    invoke-static {v0, v3, v4}, Lcom/miui/appmanager/n;->bmG(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/miui/appmanager/h;->aTV:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    const/16 v3, 0x2710

    if-le v0, v3, :cond_13

    :goto_b
    iput-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSU:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSU:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    const v2, 0x7f0708c5

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, p0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    const-string/jumbo v0, "pkg_icon://"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_f

    const-string/jumbo v0, "pkg_icon_xspace://"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    invoke-virtual {v2, v0}, Lcom/miui/appmanager/widget/AppDetailTitleView;->bid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {p0, v0, v2}, Lcom/miui/enterprise/ApplicationHelper;->allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is allowed auto start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->biy(Z)V

    :cond_10
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {p0, v0, v2}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Net config is restricted for package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->biu(Z)V

    :cond_11
    return-void

    :cond_12
    iget v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    goto/16 :goto_a

    :cond_13
    move v2, v1

    goto/16 :goto_b

    :cond_14
    move v2, v1

    goto/16 :goto_b
.end method


# virtual methods
.method public biw(Landroid/view/View;IIII)V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSp:Lcom/miui/appmanager/widget/AppDetailTitleView;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTg:Lcom/miui/appmanager/widget/AMScrollView;

    invoke-virtual {v1}, Lcom/miui/appmanager/widget/AMScrollView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTq:Lcom/miui/appmanager/c;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/widget/AppDetailTitleView;->bif(ILcom/miui/appmanager/c;)V

    return-void
.end method

.method public bjd(Landroid/content/Loader;Ljava/lang/Boolean;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    iget-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSx:J

    invoke-static {p0, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setSummary(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    const-string/jumbo v4, "%.1f%%"

    new-array v5, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTb:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setSummary(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    iget-boolean v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSd:Z

    invoke-virtual {v3, v4}, Lcom/miui/appmanager/widget/AppDetailCheckBoxView;->biz(Z)V

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v0, v0, Lcom/miui/appmanager/e;->aTs:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v3, v3, Lcom/miui/appmanager/e;->aTs:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v5, v5, Lcom/miui/appmanager/e;->aTs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f0c004d

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-virtual {v3, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setSummary(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSV:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biT()V

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSE:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v1, 0x7f070878

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setSummary(I)V

    :goto_3
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setSummary(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSY:I

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setSummary(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "00004"

    :cond_2
    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhX(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSH:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjg()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v0, v0, Lcom/miui/appmanager/e;->aTt:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v3, v3, Lcom/miui/appmanager/e;->aTt:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSR:Lcom/miui/appmanager/e;

    iget v5, v5, Lcom/miui/appmanager/e;->aTt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f0c004e

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTf:Landroid/content/res/Resources;

    const v3, 0x7f07088e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    const v1, 0x7f070877

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->setSummary(I)V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2726

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biR()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bji(Z)V

    :goto_0
    const-string/jumbo v0, "start_toggle"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/miui/appmanager/h;->blQ(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-wide/16 v2, 0x0

    const v4, 0x7f0708be

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRX:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTi:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    if-ne p1, v0, :cond_3

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjo()V

    :goto_1
    const-string/jumbo v0, "storage"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSw:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSz:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSx:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjr()V

    :goto_2
    const-string/jumbo v0, "flow"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTa:Lcom/miui/appmanager/widget/AppDetailBannerItemView;

    if-ne p1, v0, :cond_7

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTb:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjv()V

    :goto_3
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSe:Lcom/miui/appmanager/widget/AppDetailCheckBoxView;

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjq()V

    const-string/jumbo v0, "start_toggle"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSX:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjt()V

    const-string/jumbo v0, "permissions"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSA:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSQ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_b

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjs()V

    const-string/jumbo v0, "noti_manage"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTd:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_c

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjw()V

    const-string/jumbo v0, "bettery_save"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSo:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    if-ne p1, v0, :cond_e

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSE:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biH()V

    :goto_4
    const-string/jumbo v0, "clean_default"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070877

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSO:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_f

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjm()V

    const-string/jumbo v0, "network_control"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aRZ:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/appmanager/AMAppInfomationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "am_app_pkgname"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "am_app_label"

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "am_app_uid"

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSy:Lcom/miui/appmanager/widget/AppDetailTextBannerView;

    if-ne p1, v0, :cond_11

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjp()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSZ:Lcom/miui/appmanager/widget/AppDetailRightSummaryView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bju()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjg()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v7, 0x7c

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->setContentView(I)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v0

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "miui.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    invoke-static {v2}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSJ:Z

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    iget-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide v8, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mSize:J

    :cond_1
    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    const/16 v4, 0x80

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ApplicationsDetailActivity"

    const-string/jumbo v2, "getApplicationInfo fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mUid:I

    invoke-static {v0, v2}, Lcom/miui/networkassistant/utils/PackageUtil;->getPackageNameFormat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTe:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mIsSystem:Z

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->initData()V

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v7, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v1, v7, v6, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_4
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjh()V

    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/Q;

    invoke-direct {v0, p0, p0}, Lcom/miui/appmanager/Q;-><init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const v0, 0x7f070430

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    sget v1, Lmiui/R$drawable;->action_button_discard_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSv:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSK:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f07087a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    sget v1, Lmiui/R$drawable;->action_button_delete_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSL:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f070888

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    const v1, 0x7f02000f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSj:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biV()V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biW()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTc:Lcom/miui/powerkeeper/IPowerKeeper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSN:Lcom/miui/appmanager/d;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjd(Landroid/content/Loader;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjb()V

    const-string/jumbo v0, "stop_running"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    return v4

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjy()V

    const-string/jumbo v0, "uninstall"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bhV(Ljava/lang/String;)V

    return v4

    :pswitch_2
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    iget-wide v4, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    iget-boolean v6, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    iget-object v7, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSh:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/appmanager/h;->blN(Landroid/content/Context;Ljava/lang/String;JJZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSm:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    const/16 v3, 0x2726

    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/appmanager/h;->blL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSt:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, v4, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSf:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSs:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x3

    invoke-static {p0, v1, v0}, Lcom/miui/appmanager/h;->blM(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSH:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biF()V

    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bjf()V

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSB:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aTo:I

    const/16 v4, 0x80

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->finish()V

    :goto_1
    iget-boolean v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    invoke-direct {p0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->biF()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ApplicationsDetailActivity"

    const-string/jumbo v2, "getApplicationInfo fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/miui/appmanager/ApplicationsDetailsActivity;->aSc:Landroid/content/pm/ApplicationInfo;

    goto :goto_1
.end method
