.class public Lcom/miui/personalassistant/ui/AppPickerActivity;
.super Lmiui/app/ListActivity;
.source "AppPickerActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/util/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;,
        Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/app/ListActivity;",
        "Lcom/miui/personalassistant/util/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPickerActivity"


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

.field private mAppIconsCaches:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionLaunchSelected:Lcom/miui/personalassistant/model/FunctionLaunch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->createResultIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/AppPickerActivity;->showImageByThread(Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private createFunctionLaunch(Landroid/content/pm/ResolveInfo;)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->setClassName(Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->setDrawableId(I)V

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->setAppName(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/model/FunctionLaunch;->setXspace(Z)V

    goto :goto_0
.end method

.method private createResultIntent(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "key_function_selected"

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->createFunctionLaunch(Landroid/content/pm/ResolveInfo;)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v1
.end method

.method private getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAppIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "key_function_selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "key_function_selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/FunctionLaunch;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mFunctionLaunchSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    :cond_0
    return-void
.end method

.method private showImageByThread(Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/widget/ImageView;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public addDrawableToLrucaches(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAppIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x1b040001

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/AppPickerActivity;->setContentView(I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/personalassistant/util/RuntimePermissionsUtil;->requestAllPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->initData()V

    invoke-static {p0, p0}, Lcom/miui/personalassistant/util/Util;->asyncLoadAllApps(Landroid/content/Context;Lcom/miui/personalassistant/util/Callback;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit8 v0, v1, 0x5

    new-instance v2, Lcom/miui/personalassistant/ui/AppPickerActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/ui/AppPickerActivity$1;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity;I)V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAppIconsCaches:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAppIconsCaches:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAppIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v0, "AppPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult result length is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mFunctionLaunchSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    new-instance v5, Lcom/miui/personalassistant/ui/AppPickerActivity$2;

    invoke-direct {v5, p0}, Lcom/miui/personalassistant/ui/AppPickerActivity$2;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity;)V

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/Context;Ljava/util/List;Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/util/Callback;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAdapter:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity;->mAdapter:Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
