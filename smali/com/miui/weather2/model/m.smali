.class public Lcom/miui/weather2/model/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/m$i;,
        Lcom/miui/weather2/model/m$h;,
        Lcom/miui/weather2/model/m$g;,
        Lcom/miui/weather2/model/m$j;,
        Lcom/miui/weather2/model/m$m;,
        Lcom/miui/weather2/model/m$a;,
        Lcom/miui/weather2/model/m$k;,
        Lcom/miui/weather2/model/m$c;,
        Lcom/miui/weather2/model/m$d;,
        Lcom/miui/weather2/model/m$e;,
        Lcom/miui/weather2/model/m$l;,
        Lcom/miui/weather2/model/m$b;,
        Lcom/miui/weather2/model/m$f;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/m;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/m;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/AsyncTask;
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$k;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public a(Lcom/miui/weather2/model/m$e;)Landroid/os/AsyncTask;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/weather2/model/m$d;

    invoke-direct {v0, p0, p1}, Lcom/miui/weather2/model/m$d;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/m$e;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/miui/weather2/model/m$f;Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$b;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/m$b;->a(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/miui/weather2/model/m$b;->a(Lcom/miui/weather2/model/m$b;Lcom/miui/weather2/model/m$f;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Landroid/os/AsyncTask;
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$m;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/m$m;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/m$m;->a(I)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public a([Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$a;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/m$a;->a([Ljava/lang/String;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public a(Lcom/miui/weather2/model/m$f;)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$c;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-static {v0, p1}, Lcom/miui/weather2/model/m$c;->a(Lcom/miui/weather2/model/m$c;Lcom/miui/weather2/model/m$f;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/miui/weather2/model/m$h;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/weather2/model/m$i;

    invoke-direct {v0, p0, p1}, Lcom/miui/weather2/model/m$i;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/m$h;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public a(Lcom/miui/weather2/structures/CityData;Lcom/miui/weather2/model/m$j;)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/m$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$g;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/m$g;->a(Lcom/miui/weather2/structures/CityData;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/m$g;->a(Lcom/miui/weather2/model/m$j;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/miui/weather2/model/m$f;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/m$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/m$l;-><init>(Lcom/miui/weather2/model/m;Lcom/miui/weather2/model/n;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/m$l;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/m$l;->a(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/miui/weather2/model/m$l;->a(Lcom/miui/weather2/model/m$l;Lcom/miui/weather2/model/m$f;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/m$l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
