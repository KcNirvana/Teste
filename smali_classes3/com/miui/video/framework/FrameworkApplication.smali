.class public Lcom/miui/video/framework/FrameworkApplication;
.super Landroid/app/Application;
.source "FrameworkApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameworkApplication"

.field protected static isInitPermissionModule:Z

.field private static mOnAppStatusChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mOnCreatedActivityCount:I

.field private static mOnStartActivityCount:I

.field private static sCurResumeActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastCreatedActivityName:Ljava/lang/String;


# instance fields
.field private mAsset:Landroid/content/res/AssetManager;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/framework/FrameworkApplication;->isInitPermissionModule:Z

    const-string v0, ""

    sput-object v0, Lcom/miui/video/framework/FrameworkApplication;->sLastCreatedActivityName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnCreatedActivityCount:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnCreatedActivityCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/miui/video/framework/FrameworkApplication;->mOnCreatedActivityCount:I

    return v0
.end method

.method static synthetic access$010()I
    .locals 2

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnCreatedActivityCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/miui/video/framework/FrameworkApplication;->mOnCreatedActivityCount:I

    return v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/miui/video/framework/FrameworkApplication;->sLastCreatedActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnStartActivityCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnStartActivityCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/miui/video/framework/FrameworkApplication;->mOnStartActivityCount:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    sget v0, Lcom/miui/video/framework/FrameworkApplication;->mOnStartActivityCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/miui/video/framework/FrameworkApplication;->mOnStartActivityCount:I

    return v0
.end method

.method static synthetic access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/miui/video/framework/FrameworkApplication;->sCurResumeActivityRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static addAppStatusChangedListener(Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;)V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurResumeActivty()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->sCurResumeActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->sCurResumeActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getLastCreatedActivityName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->sLastCreatedActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public static initPermissionModule()V
    .locals 1

    sget-boolean v0, Lcom/miui/video/framework/FrameworkApplication;->isInitPermissionModule:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/framework/FrameworkApplication;->isInitPermissionModule:Z

    :cond_0
    return-void
.end method

.method public static unRegisterStatusChangedListener(Lcom/miui/video/framework/FrameworkApplication$OnAppStatusChangedListener;)V
    .locals 1

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/framework/FrameworkApplication;->mOnAppStatusChangedListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mAsset:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mAsset:Landroid/content/res/AssetManager;

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mResources:Landroid/content/res/Resources;

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method protected initActivityLifecycleListener()V
    .locals 1

    new-instance v0, Lcom/miui/video/framework/FrameworkApplication$1;

    invoke-direct {v0, p0}, Lcom/miui/video/framework/FrameworkApplication$1;-><init>(Lcom/miui/video/framework/FrameworkApplication;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/framework/FrameworkApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public update(Landroid/content/res/AssetManager;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkApplication;->mAsset:Landroid/content/res/AssetManager;

    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/framework/FrameworkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/video/framework/FrameworkApplication;->mResources:Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/miui/video/framework/FrameworkApplication;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/framework/FrameworkApplication;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object p1, p0, Lcom/miui/video/framework/FrameworkApplication;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    return-void
.end method
