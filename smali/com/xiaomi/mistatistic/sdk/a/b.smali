.class public abstract Lcom/xiaomi/mistatistic/sdk/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/a/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/xmsf/push/service/b;

.field private static volatile b:Z

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/xmsf/push/service/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/e;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/xmsf/push/service/b;)Lcom/xiaomi/xmsf/push/service/b;
    .locals 0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/a/b;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LER"

    const-string v1, "mistats is not initialized properly."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "LER"

    const-string v1, "disable local event upload for CTA build"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "LER"

    const-string v1, "insert event use systemstatsvc"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/c;-><init>(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled local event upload, event category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/b$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/b$a;-><init>(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/as;->a()Lcom/xiaomi/mistatistic/sdk/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/as;->c()V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mistat_basic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_session"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_pv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_session_extra"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    return p0
.end method

.method static synthetic b()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.StatService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/b;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    const-string v0, "LER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind StatSystemService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/a/b;->c(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    return-void
.end method

.method static synthetic c()Lcom/xiaomi/xmsf/push/service/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/xmsf/push/service/b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/m;->a()Lcom/xiaomi/mistatistic/sdk/a/m;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/d;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/m;->a(Lcom/xiaomi/mistatistic/sdk/a/m$a;J)V

    return-void
.end method

.method private static c(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/xmsf/push/service/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/xmsf/push/service/b;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/xmsf/push/service/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "LER"

    const-string v2, "insertEventUseSystemService exception: "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Ljava/util/List;

    return-object v0
.end method
