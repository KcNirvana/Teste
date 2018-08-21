.class public Lcom/alipay/android/phone/inside/common/a/b;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/inside/common/a/b;->a:Z

    sput-boolean v0, Lcom/alipay/android/phone/inside/common/a/b;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 3

    sget-boolean v0, Lcom/alipay/android/phone/inside/common/a/b;->a:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/phone/inside/common/a/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    sget-boolean v0, Lcom/alipay/android/phone/inside/common/a/b;->b:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "init isDebug"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
