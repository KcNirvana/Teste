.class public Lmiui/a/a;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lmiui/a/c;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lmiui/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-direct {p0}, Lmiui/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/a/a;->a:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/a/c$a;->a:Lmiui/a/c$a;

    invoke-static {v0}, Lmiui/a/i;->a(Lmiui/a/c$a;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "miuisdk"

    const-string v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lmiui/a/c$a;->a:Lmiui/a/c$a;

    invoke-static {v0}, Lmiui/a/i;->a(Lmiui/a/c$a;)V

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

.method private a()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/a/j;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "com.miui.core"

    const-string v3, "miui"

    invoke-static {v1, v2, v3}, Lmiui/a/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.miui.core"

    invoke-static {v2, v3}, Lmiui/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-class v4, Lmiui/a/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lmiui/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmiui/a/c$a;->b:Lmiui/a/c$a;

    invoke-static {v1}, Lmiui/a/i;->a(Lmiui/a/c$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v1}, Lmiui/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initialize"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Application;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "initialize"

    invoke-direct {p0, v2, v0}, Lmiui/a/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/a/a;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private g()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Lmiui/a/c$a;->c:Lmiui/a/c$a;

    invoke-static {v0}, Lmiui/a/i;->a(Lmiui/a/c$a;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "start"

    invoke-direct {p0, v2, v0}, Lmiui/a/a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/a/a;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Lmiui/a/a;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/a/a;->c()Lmiui/a/b;

    move-result-object v0

    iput-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0, p0}, Lmiui/a/b;->a(Lmiui/a/a;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/a/a;->b:Z

    goto :goto_0
.end method

.method public c()Lmiui/a/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final d()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final e()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final f()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0, p1}, Lmiui/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/a/a;->a(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    iget-boolean v0, p0, Lmiui/a/a;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0}, Lmiui/a/b;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/a/a;->d()V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0}, Lmiui/a/b;->onLowMemory()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/a/a;->f()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0}, Lmiui/a/b;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/a/a;->e()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/a/a;->c:Lmiui/a/b;

    invoke-virtual {v0, p1}, Lmiui/a/b;->onTrimMemory(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/a/a;->a(I)V

    goto :goto_0
.end method
