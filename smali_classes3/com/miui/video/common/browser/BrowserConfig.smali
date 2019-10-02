.class public Lcom/miui/video/common/browser/BrowserConfig;
.super Ljava/lang/Object;
.source "BrowserConfig.java"


# static fields
.field private static debugSwitch:Z

.field private static logSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugSwitch()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/common/browser/BrowserConfig;->debugSwitch:Z

    return v0
.end method

.method public static isLogSwitch()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/common/browser/BrowserConfig;->logSwitch:Z

    return v0
.end method

.method public static setDebugSwitch(Z)V
    .locals 2

    sput-boolean p0, Lcom/miui/video/common/browser/BrowserConfig;->debugSwitch:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setLogSwitch(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/common/browser/BrowserConfig;->logSwitch:Z

    return-void
.end method
