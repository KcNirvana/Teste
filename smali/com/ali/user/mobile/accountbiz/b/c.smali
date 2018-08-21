.class public Lcom/ali/user/mobile/accountbiz/b/c;
.super Ljava/lang/Object;
.source "SharedPreferencesManager.java"


# static fields
.field private static a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/mobile/accountbiz/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/b/c;->a:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/b/c;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/accountbiz/b/a;

    if-nez v0, :cond_3

    const-class v1, Lcom/ali/user/mobile/accountbiz/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/b/c;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/accountbiz/b/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ali/user/mobile/accountbiz/b/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/accountbiz/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v2, Lcom/ali/user/mobile/accountbiz/b/c;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/b/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
