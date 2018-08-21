.class public Lcom/alipay/android/app/plugin/a/b;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static a:Lcom/alipay/android/app/plugin/a;

.field private static b:Lcom/alipay/android/app/plugin/f;

.field private static c:Lcom/alipay/android/app/plugin/c;

.field private static d:Lcom/alipay/android/app/plugin/g;

.field private static e:Lcom/alipay/android/app/plugin/d;

.field private static f:Lcom/alipay/android/app/plugin/e;


# direct methods
.method public static a()Lcom/alipay/android/app/plugin/e;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->f:Lcom/alipay/android/app/plugin/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->f:Lcom/alipay/android/app/plugin/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->g()Lcom/alipay/android/app/plugin/e;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->f:Lcom/alipay/android/app/plugin/e;

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->f:Lcom/alipay/android/app/plugin/e;

    goto :goto_0
.end method

.method public static b()Lcom/alipay/android/app/plugin/d;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->e:Lcom/alipay/android/app/plugin/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->h()Lcom/alipay/android/app/plugin/d;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->e:Lcom/alipay/android/app/plugin/d;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->e:Lcom/alipay/android/app/plugin/d;

    return-object v0
.end method

.method public static c()Lcom/alipay/android/app/plugin/g;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->d:Lcom/alipay/android/app/plugin/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->i()Lcom/alipay/android/app/plugin/g;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->d:Lcom/alipay/android/app/plugin/g;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->d:Lcom/alipay/android/app/plugin/g;

    return-object v0
.end method

.method public static d()Lcom/alipay/android/app/plugin/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->a:Lcom/alipay/android/app/plugin/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->j()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->a:Lcom/alipay/android/app/plugin/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->a:Lcom/alipay/android/app/plugin/a;

    return-object v0
.end method

.method public static e()Lcom/alipay/android/app/plugin/f;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->b:Lcom/alipay/android/app/plugin/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->k()Lcom/alipay/android/app/plugin/f;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->b:Lcom/alipay/android/app/plugin/f;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->b:Lcom/alipay/android/app/plugin/f;

    return-object v0
.end method

.method public static f()Lcom/alipay/android/app/plugin/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->l()Lcom/alipay/android/app/plugin/c;

    move-result-object v0

    return-object v0
.end method

.method private static g()Lcom/alipay/android/app/plugin/e;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.ctemplate.api.TemplateTransportRpc"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/plugin/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "template"

    const-string/jumbo v4, "TplRpcInitTransEx"

    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static h()Lcom/alipay/android/app/plugin/d;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.ctemplate.api.TemplateEngine"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/plugin/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static i()Lcom/alipay/android/app/plugin/g;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/plugin/impl/a;

    invoke-direct {v0}, Lcom/alipay/android/app/plugin/impl/a;-><init>()V

    return-object v0
.end method

.method private static j()Lcom/alipay/android/app/plugin/a;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/plugin/impl/DnsEngineImpl;

    invoke-direct {v0}, Lcom/alipay/android/app/plugin/impl/DnsEngineImpl;-><init>()V

    return-object v0
.end method

.method private static k()Lcom/alipay/android/app/plugin/f;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.trans.api.TransChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/plugin/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static l()Lcom/alipay/android/app/plugin/c;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->c:Lcom/alipay/android/app/plugin/c;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.pb.api.PbTransportChannel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/plugin/c;

    sput-object v0, Lcom/alipay/android/app/plugin/a/b;->c:Lcom/alipay/android/app/plugin/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/plugin/a/b;->c:Lcom/alipay/android/app/plugin/c;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
