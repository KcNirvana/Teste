.class public Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final bbi:Ljava/util/Comparator;

.field public static final bbj:Ljava/util/Comparator;


# instance fields
.field private bbk:Lmiui/app/AlertDialog;

.field private bbl:Landroid/app/ActivityManager;

.field private bbm:Landroid/app/IActivityManager;

.field private bbn:Lcom/miui/applicationlock/utils/e;

.field private bbo:I

.field private bbp:Ljava/util/ArrayList;

.field private bbq:Z

.field private bbr:Z

.field private bbs:Lcom/miui/privacyapps/ui/b;

.field private bbt:Lcom/miui/privacyapps/b/a;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/miui/privacyapps/ui/i;

    invoke-direct {v0}, Lcom/miui/privacyapps/ui/i;-><init>()V

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbi:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/privacyapps/ui/j;

    invoke-direct {v0}, Lcom/miui/privacyapps/ui/j;-><init>()V

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbj:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/privacyapps/ui/g;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/g;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/privacyapps/ui/h;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/h;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/privacyapps/ui/k;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/k;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private bxJ(Ljava/lang/String;I)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbl:Landroid/app/ActivityManager;

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

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private bxK(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private bxL()Z
    .locals 2

    const-string/jumbo v0, "is_show_about_privacyapps_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bxM()Ljava/util/ArrayList;
    .locals 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/miui/appmanager/h;->blY(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x40

    const/16 v8, 0x3e7

    invoke-static {v1, v7, v8}, Lcom/miui/appmanager/n;->bmQ(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    new-instance v11, Lcom/miui/privacyapps/d;

    invoke-direct {v11}, Lcom/miui/privacyapps/d;-><init>()V

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/miui/privacyapps/d;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/miui/privacyapps/d;->byP(I)V

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v12}, Lcom/miui/privacyapps/d;->setUid(I)V

    invoke-virtual {v11, v1}, Lcom/miui/privacyapps/d;->setLabel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12, v10}, Lmiui/security/SecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/miui/privacyapps/d;->byO(Z)V

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbt:Lcom/miui/privacyapps/b/a;

    iget-object v12, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12, v0, v10}, Lcom/miui/privacyapps/b/a;->byz(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v10, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getAppLabel error"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/miui/privacyapps/b;

    invoke-direct {v0}, Lcom/miui/privacyapps/b;-><init>()V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    const v9, 0x7f0c0059

    invoke-virtual {v1, v9, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->setHeaderTitle(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/permcenter/autostart/HeaderType;->NT:Lcom/miui/permcenter/autostart/HeaderType;

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->byJ(Lcom/miui/permcenter/autostart/HeaderType;)V

    invoke-virtual {v0, v8}, Lcom/miui/privacyapps/b;->byK(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/miui/privacyapps/b;

    invoke-direct {v0}, Lcom/miui/privacyapps/b;-><init>()V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const v4, 0x7f0c0058

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->setHeaderTitle(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/permcenter/autostart/HeaderType;->NU:Lcom/miui/permcenter/autostart/HeaderType;

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->byJ(Lcom/miui/permcenter/autostart/HeaderType;)V

    invoke-virtual {v0, v7}, Lcom/miui/privacyapps/b;->byK(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v5
.end method

.method private bxO(Ljava/lang/String;IZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/security/SecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbt:Lcom/miui/privacyapps/b/a;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byy()I

    move-result v1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/b;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b;->byH()Lcom/miui/permcenter/autostart/HeaderType;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/miui/permcenter/autostart/HeaderType;->NU:Lcom/miui/permcenter/autostart/HeaderType;

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c0058

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/privacyapps/b;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c0059

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/privacyapps/b;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/b;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/privacyapps/c;->bci:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    if-eqz p3, :cond_3

    invoke-static {p1}, Lcom/miui/privacyapps/a/a;->bys(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private bxP(Z)V
    .locals 1

    const-string/jumbo v0, "is_show_about_privacyapps_dialog"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method private bxQ(Landroid/widget/CompoundButton;Lcom/miui/privacyapps/d;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0709a6

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0709a7

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0709a8

    invoke-virtual {p0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/privacyapps/ui/m;

    invoke-direct {v1, p0, p1}, Lcom/miui/privacyapps/ui/m;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Landroid/widget/CompoundButton;)V

    const v2, 0x7f0705d6

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/privacyapps/ui/n;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/privacyapps/ui/n;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Lcom/miui/privacyapps/d;Landroid/widget/CompoundButton;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbk:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbk:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/privacyapps/ui/o;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/privacyapps/ui/o;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Lcom/miui/privacyapps/d;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbk:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private bxR(Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbl:Landroid/app/ActivityManager;

    const/16 v1, 0x3e9

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxK(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/miui/a/c/a;->btz(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, p2, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbm:Landroid/app/IActivityManager;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbl:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v1

    sget-object v6, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "userId"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v6, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "userId"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private bxS(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/d;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxL()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxQ(Landroid/widget/CompoundButton;Lcom/miui/privacyapps/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/miui/privacyapps/d;->byO(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->byN()I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxO(Ljava/lang/String;IZ)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getUid()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxJ(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxR(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic bxT(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bxU(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Lcom/miui/privacyapps/ui/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    return-object v0
.end method

.method static synthetic bxV(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    return-object v0
.end method

.method static synthetic bxW(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic bxX(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic bxY(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxM()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bxZ(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxO(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic bya(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxP(Z)V

    return-void
.end method

.method static synthetic byb(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxR(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic byc(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/b;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b;->byI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/d;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->byM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbj:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lcom/miui/privacyapps/b;

    invoke-direct {v0}, Lcom/miui/privacyapps/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->byK(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const v1, 0x7f0c0046

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/b;->setHeaderTitle(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    invoke-virtual {v0, v1}, Lcom/miui/privacyapps/ui/b;->bye(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public bxN(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    invoke-virtual {v0, p2}, Lcom/miui/privacyapps/ui/b;->bye(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbp:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/b;

    invoke-virtual {v0}, Lcom/miui/privacyapps/b;->byI()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    if-le v2, v4, :cond_0

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbi:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0046

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->setResult(I)V

    :goto_0
    invoke-super {p0}, Lcom/miui/common/a/d;->finish()V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->setResult(I)V

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xf990c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->setResult(I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->finish()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxS(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x140

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03013f

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    :cond_0
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbl:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbm:Landroid/app/IActivityManager;

    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbn:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/miui/privacyapps/b/a;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbt:Lcom/miui/privacyapps/b/a;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    new-instance v0, Lcom/miui/privacyapps/ui/b;

    invoke-direct {v0, p0, p0}, Lcom/miui/privacyapps/ui/b;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    invoke-virtual {v0, p0}, Lcom/miui/privacyapps/ui/b;->byd(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbs:Lcom/miui/privacyapps/ui/b;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_from_privacyapps_page"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->setResult(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/privacyapps/ui/l;

    invoke-direct {v0, p0, p0}, Lcom/miui/privacyapps/ui/l;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/ui/c;

    iget-object v1, v0, Lcom/miui/privacyapps/ui/c;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, v0, Lcom/miui/privacyapps/ui/c;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxS(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxN(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/d;->onStart()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbn:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf990c

    invoke-virtual {p0, v0, v1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->finish()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbr:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bbq:Z

    :cond_1
    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method
