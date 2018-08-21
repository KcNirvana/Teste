.class public final Lcom/alipay/mobile/common/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/Sdk$MockApplication;,
        Lcom/alipay/mobile/common/Sdk$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/alipay/mobile/common/a$a;)Lcom/alipay/mobile/common/a;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobile/common/db/b;->a(Lcom/alipay/mobile/common/a$a;)Lcom/alipay/mobile/common/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Landroid/app/Application;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->b()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.android.layoutlib.bridge.impl.RenderAction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getCurrentContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/alipay/mobile/common/Sdk$MockApplication;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/Sdk$MockApplication;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/Sdk$a;->b(Landroid/app/Application;)Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please invoke Sdk.Ext.init(app) on Application#onCreate() and register your Application in manifest."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Lcom/alipay/mobile/common/common/a;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/alipay/mobile/common/b;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->d()Lcom/alipay/mobile/common/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/http/b;->a()V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->d()Lcom/alipay/mobile/common/b;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/alipay/mobile/common/c;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->e()Lcom/alipay/mobile/common/c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/a/i;->a()V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/Sdk$a;->e()Lcom/alipay/mobile/common/c;

    move-result-object v0

    return-object v0
.end method
