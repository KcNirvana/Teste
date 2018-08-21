.class public Lmiui/externalassistant/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lmiui/externalassistant/SdkConstants;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.core"


# instance fields
.field private mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

.field private mInitialized:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-direct {p0}, Lmiui/externalassistant/Application;->loadSdk()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/externalassistant/Application;->initializeSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/externalassistant/Application;->mInitialized:Z

    goto :goto_0
.end method

.method private handleGenericError(Ljava/lang/Throwable;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "miuisdk"

    const-string/jumbo v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->GENERIC:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/externalassistant/SdkErrorInstrumentation;->handleSdkError(Lmiui/externalassistant/SdkConstants$SdkError;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private handleUnknownError(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/externalassistant/SdkConstants$SdkError;->GENERIC:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/externalassistant/SdkErrorInstrumentation;->handleSdkError(Lmiui/externalassistant/SdkConstants$SdkError;)V

    return-void
.end method

.method private initializeSdk()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/externalassistant/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v6, "initialize"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/app/Application;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "initialize"

    invoke-direct {p0, v3, v0}, Lmiui/externalassistant/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    :goto_0
    return v3

    :catch_0
    move-exception v2

    invoke-direct {p0, v2}, Lmiui/externalassistant/Application;->handleGenericError(Ljava/lang/Throwable;)V

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private loadSdk()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lmiui/externalassistant/SdkHelper;->isMiuiSystem()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    const-string/jumbo v6, "com.miui.core"

    const-string/jumbo v7, "miui"

    invoke-static {v5, v6, v7}, Lmiui/externalassistant/SdkHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const-string/jumbo v6, "com.miui.core"

    invoke-static {v5, v6}, Lmiui/externalassistant/SdkHelper;->getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const-class v6, Lmiui/externalassistant/Application;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v0, v5, v1, v6}, Lmiui/externalassistant/SdkLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v5, Lmiui/externalassistant/SdkConstants$SdkError;->NO_SDK:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-static {v5}, Lmiui/externalassistant/SdkErrorInstrumentation;->handleSdkError(Lmiui/externalassistant/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v3

    invoke-direct {p0, v3}, Lmiui/externalassistant/Application;->handleGenericError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private startSdk()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/externalassistant/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v6, "start"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_0

    sget-object v3, Lmiui/externalassistant/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-static {v3}, Lmiui/externalassistant/SdkErrorInstrumentation;->handleSdkError(Lmiui/externalassistant/SdkConstants$SdkError;)V

    move v3, v4

    :goto_0
    return v3

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "start"

    invoke-direct {p0, v3, v0}, Lmiui/externalassistant/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v2}, Lmiui/externalassistant/Application;->handleGenericError(Ljava/lang/Throwable;)V

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Lmiui/externalassistant/Application;->mInitialized:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/externalassistant/Application;->startSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/externalassistant/Application;->onCreateApplicationDelegate()Lmiui/externalassistant/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/externalassistant/ApplicationDelegate;->attach(Lmiui/externalassistant/Application;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/externalassistant/Application;->mStarted:Z

    goto :goto_0
.end method

.method public final getApplicationDelegate()Lmiui/externalassistant/ApplicationDelegate;
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/externalassistant/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    iget-boolean v0, p0, Lmiui/externalassistant/Application;->mStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/externalassistant/ApplicationDelegate;->onCreate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/externalassistant/Application;->superOnCreate()V

    goto :goto_0
.end method

.method public onCreateApplicationDelegate()Lmiui/externalassistant/ApplicationDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/externalassistant/ApplicationDelegate;->onLowMemory()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/externalassistant/Application;->superOnLowMemory()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/externalassistant/ApplicationDelegate;->onTerminate()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/externalassistant/Application;->superOnTerminate()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/externalassistant/Application;->mApplicationDelegate:Lmiui/externalassistant/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/ApplicationDelegate;->onTrimMemory(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/externalassistant/Application;->superOnTrimMemory(I)V

    goto :goto_0
.end method

.method final superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final superOnCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final superOnLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final superOnTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final superOnTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
