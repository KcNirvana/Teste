.class public Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;
.super Lcom/miui/video/framework/FrameworkApplication;
.source "VideoPlusApplication.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "video_plus"

.field public static final APP_THEME:Ljava/lang/String; = "com.miui.video.theme.01"

.field private static isInitBase:Z

.field private static isInitModule:Z

.field private static mAppContext:Landroid/content/Context;

.field private static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/FrameworkApplication;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method private initBase()V
    .locals 10

    sget-boolean v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->isInitBase:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->isInitBase:Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "video_plus"

    const/4 v5, 0x0

    const-string v6, "com.miui.video.theme.01"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/FrameworkConfig;->initBase(Landroid/content/Context;ILjava/lang/String;ZLjava/lang/String;Z)Z

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v1

    const-string v2, "video_plus"

    const-string v3, "logs"

    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/miui/video/framework/FrameworkConfig;->initLogs(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v4

    const/16 v6, 0x4e20

    const/16 v7, 0x1000

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/video/framework/FrameworkConfig;->initNetwork(IIIIZ)V

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/base/utils/ThemeUtils;->getInstance()Lcom/miui/video/base/utils/ThemeUtils;

    move-result-object v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/miui/video/base/utils/ThemeUtils;->init(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->initActivityLifecycleListener()V

    invoke-static {v0}, Lcom/miui/video/framework/task/ThreadPoolManager;->init(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->initLocalMediaService()V

    const-string v0, "video_plus"

    const-string v1, "initBase"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initLocalMediaService()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->initContext(Landroid/content/Context;)V

    return-void
.end method

.method private static initModule()V
    .locals 3

    sget-boolean v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->isInitModule:Z

    if-nez v0, :cond_0

    const-string v0, "video_plus"

    const-string v1, "initModule"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->isInitModule:Z

    :cond_0
    return-void
.end method

.method public static isUserDeclarationAccepted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setUserDeclarationAcceptedOrOnce(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/framework/FrameworkApplication;->onCreate()V

    sput-object p0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    sput-object p0, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mApplication:Landroid/app/Application;

    const-string v0, "video_plus"

    const-string v1, "VideoPlusApplication onCreate "

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->initBase()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->mAppContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/AppUtils;->getRunningAppName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/VideoPlusApplication;->initModule()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_28_P()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "push"

    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/framework/FrameworkApplication;->onLowMemory()V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/framework/FrameworkApplication;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/framework/FrameworkApplication;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    return-void
.end method
