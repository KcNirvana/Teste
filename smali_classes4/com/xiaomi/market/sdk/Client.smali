.class public Lcom/xiaomi/market/sdk/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field static ANDROID_ID:Ljava/lang/String; = null

.field static DISPLAY_DENSITY:I = 0x0

.field static DISPLAY_HEIGHT:I = 0x0

.field static DISPLAY_RESOLUTION:Ljava/lang/String; = null

.field static DISPLAY_WIDTH:I = 0x0

.field static FEATURE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static GLES_VERSION:Ljava/lang/String; = null

.field static GL_EXTENSION:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static LIBRARY:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static RELEASE:Ljava/lang/String; = null

.field static SDK_VERSION:I = 0x0

.field static SYSTEM_VERSION:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MarketSdkClient"

.field static TOUCH_SCREEN:I = 0x0

.field static final XIAOMI_SDK_VERSION_CODE:I = 0x5

.field private static mIsInited:Z

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireDeviceConfig(Landroid/content/Context;)V
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    sput v0, Lcom/xiaomi/market/sdk/Client;->TOUCH_SCREEN:I

    invoke-virtual {p0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->GLES_VERSION:Ljava/lang/String;

    return-void
.end method

.method private static acquireFeature(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/market/sdk/Client;->FEATURE:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireGLExtensions()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->getGLExtensions()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/market/sdk/Client;->GL_EXTENSION:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static acquireIdentity(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->ANDROID_ID:Ljava/lang/String;

    return-void
.end method

.method private static acquireLibrary(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/market/sdk/Client;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/xiaomi/market/sdk/Client;->LIBRARY:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_HEIGHT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaomi/market/sdk/Client;->DISPLAY_WIDTH:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_RESOLUTION:Ljava/lang/String;

    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->DISPLAY_DENSITY:I

    return-void
.end method

.method private static acquireSystemInfo(Landroid/content/Context;)V
    .locals 0

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->RELEASE:Ljava/lang/String;

    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/market/sdk/Client;->SYSTEM_VERSION:Ljava/lang/String;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput p0, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGLExtensions()Ljava/lang/String;
    .locals 11

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    if-ne v7, v1, :cond_0

    return-object v8

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v8

    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    new-array v10, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v1, 0xb

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, v7

    move-object v4, v10

    move-object v6, v9

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v8

    :cond_2
    const/4 v1, 0x0

    aget v2, v9, v1

    if-lez v2, :cond_3

    aget-object v1, v10, v1

    goto :goto_0

    :cond_3
    move-object v1, v8

    :goto_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v7, v1, v2, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-interface {v0, v7, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v0, v7, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v8

    :cond_5
    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x1f03

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-interface {v0, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_6
    return-object v8

    :cond_7
    :goto_1
    return-object v8

    nop

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1e0
        0x3056
        0x320
        0x3038
    .end array-data
.end method

.method public static getImeiMd5()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaomi/market/sdk/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/market/sdk/Coder;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiBigVersionCode()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiBigVersionName()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/market/sdk/Client;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireScreenAttr(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireDeviceConfig(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireFeature(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireLibrary(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->acquireGLExtensions()V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireSystemInfo(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/xiaomi/market/sdk/Client;->acquireIdentity(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/xiaomi/market/sdk/Client;->mIsInited:Z

    return-void
.end method

.method public static isInternationalMiui()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/market/sdk/Client;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/market/sdk/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isLaterThanHoneycomb()Z
    .locals 2

    sget v0, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaterThanN()Z
    .locals 2

    sget v0, Lcom/xiaomi/market/sdk/Client;->SDK_VERSION:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiui()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/miui.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/miui/miui.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
