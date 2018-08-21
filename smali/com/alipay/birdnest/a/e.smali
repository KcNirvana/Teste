.class public Lcom/alipay/birdnest/a/e;
.super Ljava/lang/Object;
.source "FBLogger.java"


# static fields
.field public static a:Lcom/alipay/birdnest/api/d;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/birdnest/a/e;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/birdnest/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/birdnest/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/birdnest/a/e;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alipay/birdnest/a/e;->a:Lcom/alipay/birdnest/api/d;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/birdnest/a/e;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
