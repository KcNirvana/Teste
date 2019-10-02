.class public Lcom/hungama/apps/ha/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/e/c;


# instance fields
.field private a:Lcom/hungama/apps/ha/e/f;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hungama/apps/ha/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/hungama/apps/ha/e/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/hungama/apps/ha/e/f;

    invoke-direct {v0, p1}, Lcom/hungama/apps/ha/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/e/j;->a:Lcom/hungama/apps/ha/e/f;

    invoke-static {}, Lcom/hungama/apps/ha/e/g;->a()V

    invoke-static {}, Lcom/hungama/apps/ha/e/g;->b()V

    invoke-static {p1}, Lcom/hungama/apps/ha/e/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->a:Lcom/hungama/apps/ha/e/f;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hungama/apps/ha/e/a;

    new-instance v2, Lcom/hungama/apps/ha/e/e;

    invoke-direct {v2, v1, p0}, Lcom/hungama/apps/ha/e/e;-><init>(Lcom/hungama/apps/ha/e/a;Lcom/hungama/apps/ha/e/c;)V

    iput-object v2, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    iget-object v1, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    invoke-virtual {v1}, Lcom/hungama/apps/ha/e/e;->a()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/e;->b()V

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/e;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/apps/ha/e/j;->c:Lcom/hungama/apps/ha/e/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/apps/ha/e/j;->b()V

    invoke-direct {p0}, Lcom/hungama/apps/ha/e/j;->a()V

    return-void
.end method

.method public a(Lcom/hungama/apps/ha/e/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hungama/apps/ha/e/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->a:Lcom/hungama/apps/ha/e/f;

    invoke-virtual {v0}, Lcom/hungama/apps/ha/e/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hungama/apps/ha/e/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hungama/apps/ha/e/j;->a()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Lcom/hungama/apps/ha/e/h;

    sget v0, Lcom/hungama/apps/ha/e/h;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "No Network"

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/hungama/apps/ha/e/h;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw p1
.end method
