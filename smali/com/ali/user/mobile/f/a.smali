.class public Lcom/ali/user/mobile/f/a;
.super Ljava/lang/Object;
.source "ConfigResolver.java"


# static fields
.field private static a:Lcom/ali/user/mobile/f/c;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/ali/user/mobile/f/c;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/f/a;->a:Lcom/ali/user/mobile/f/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/f/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/f/a;->a:Lcom/ali/user/mobile/f/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/f/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/f/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/f/a;->a:Lcom/ali/user/mobile/f/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/f/a;->a:Lcom/ali/user/mobile/f/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/f/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/ali/user/mobile/f/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/f/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
