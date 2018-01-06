.class public Lcom/miui/weather2/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/q$a;
    }
.end annotation


# static fields
.field private static e:Lcom/a/a/k;

.field private static f:Lcom/miui/weather2/model/q$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/weather2/model/q;->e:Lcom/a/a/k;

    sput-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/miui/weather2/model/q;->f()Lcom/miui/weather2/model/q$a;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    sget-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    invoke-virtual {v0, p2, p3, p4}, Lcom/miui/weather2/model/q$a;->a(Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/weather2/model/q;->e()Lcom/a/a/k;

    move-result-object v1

    sget-object v2, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    invoke-virtual {v1, v2}, Lcom/a/a/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/q;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/q;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/q;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/q;->d:Ljava/lang/String;

    return-void
.end method

.method private e()Lcom/a/a/k;
    .locals 2

    sget-object v0, Lcom/miui/weather2/model/q;->e:Lcom/a/a/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/weather2/model/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/weather2/model/q;->e:Lcom/a/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/k;

    invoke-direct {v0}, Lcom/a/a/k;-><init>()V

    sput-object v0, Lcom/miui/weather2/model/q;->e:Lcom/a/a/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/weather2/model/q;->e:Lcom/a/a/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()Lcom/miui/weather2/model/q$a;
    .locals 2

    sget-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/weather2/model/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/q$a;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/q$a;-><init>(Lcom/miui/weather2/model/q;)V

    sput-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/weather2/model/q;->f:Lcom/miui/weather2/model/q$a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/q;->d:Ljava/lang/String;

    return-object v0
.end method
