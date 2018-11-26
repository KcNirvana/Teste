.class public Lcom/miui/firstaidkit/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static uz:Lcom/miui/firstaidkit/d;


# instance fields
.field private mContext:Landroid/content/Context;

.field private uA:Lcom/miui/firstaidkit/b;

.field private uB:Ljava/util/Queue;

.field private volatile uu:Z

.field private uv:I

.field private uw:Lcom/miui/firstaidkit/e;

.field private ux:Lcom/miui/firstaidkit/c;

.field private uy:Lcom/miui/firstaidkit/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/firstaidkit/d;->uu:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/d;->uB:Ljava/util/Queue;

    iput-object p1, p0, Lcom/miui/firstaidkit/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/firstaidkit/c;->getInstance(Landroid/content/Context;)Lcom/miui/firstaidkit/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    new-instance v0, Lcom/miui/firstaidkit/b;

    invoke-direct {v0}, Lcom/miui/firstaidkit/b;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/d;->uA:Lcom/miui/firstaidkit/b;

    invoke-static {}, Lcom/miui/firstaidkit/k;->getInstance()Lcom/miui/firstaidkit/k;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/d;->uy:Lcom/miui/firstaidkit/k;

    iput-boolean v1, p0, Lcom/miui/firstaidkit/d;->uu:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/firstaidkit/d;
    .locals 2

    sget-object v0, Lcom/miui/firstaidkit/d;->uz:Lcom/miui/firstaidkit/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/firstaidkit/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/firstaidkit/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/firstaidkit/d;->uz:Lcom/miui/firstaidkit/d;

    :cond_0
    sget-object v0, Lcom/miui/firstaidkit/d;->uz:Lcom/miui/firstaidkit/d;

    return-object v0
.end method

.method private vV(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    const-string/jumbo v1, "ConsumePower"

    new-instance v2, Lcom/miui/firstaidkit/p;

    invoke-direct {v2, p0, p1}, Lcom/miui/firstaidkit/p;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/firstaidkit/c;->vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V

    return-void
.end method

.method private vY(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    const-string/jumbo v1, "Internet"

    new-instance v2, Lcom/miui/firstaidkit/n;

    invoke-direct {v2, p0, p1}, Lcom/miui/firstaidkit/n;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/firstaidkit/c;->vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V

    return-void
.end method

.method private vZ(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    const-string/jumbo v1, "Operation"

    new-instance v2, Lcom/miui/firstaidkit/o;

    invoke-direct {v2, p0, p1}, Lcom/miui/firstaidkit/o;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/firstaidkit/c;->vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V

    return-void
.end method

.method private wa(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    const-string/jumbo v1, "Other"

    new-instance v2, Lcom/miui/firstaidkit/q;

    invoke-direct {v2, p0, p1}, Lcom/miui/firstaidkit/q;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/firstaidkit/c;->vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V

    return-void
.end method

.method private wb(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->ux:Lcom/miui/firstaidkit/c;

    const-string/jumbo v1, "Performance"

    new-instance v2, Lcom/miui/firstaidkit/m;

    invoke-direct {v2, p0, p1}, Lcom/miui/firstaidkit/m;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/firstaidkit/c;->vQ(Landroid/os/Handler;Ljava/lang/String;Lcom/miui/firstaidkit/b/a;)V

    return-void
.end method

.method static synthetic wc(Lcom/miui/firstaidkit/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/d;->uu:Z

    return v0
.end method

.method static synthetic wd(Lcom/miui/firstaidkit/d;)I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/d;->uv:I

    return v0
.end method

.method static synthetic we(Lcom/miui/firstaidkit/d;)Lcom/miui/firstaidkit/k;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uy:Lcom/miui/firstaidkit/k;

    return-object v0
.end method

.method static synthetic wf(Lcom/miui/firstaidkit/d;)Lcom/miui/firstaidkit/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uA:Lcom/miui/firstaidkit/b;

    return-object v0
.end method

.method static synthetic wg(Lcom/miui/firstaidkit/d;I)I
    .locals 0

    iput p1, p0, Lcom/miui/firstaidkit/d;->uv:I

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/firstaidkit/d;->uu:Z

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/e;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/e;->interrupt()V

    iput-object v1, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    :cond_0
    return-void
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/miui/firstaidkit/d;->uv:I

    return v0
.end method

.method public vT()Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uB:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    return-object v0
.end method

.method public vU(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Lcom/miui/firstaidkit/b/b;)V
    .locals 2

    new-instance v0, Lcom/miui/firstaidkit/e;

    iget-object v1, p0, Lcom/miui/firstaidkit/d;->uA:Lcom/miui/firstaidkit/b;

    invoke-virtual {v1, p1}, Lcom/miui/firstaidkit/b;->vN(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/miui/firstaidkit/e;-><init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/b/b;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uw:Lcom/miui/firstaidkit/e;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/e;->start()V

    return-void
.end method

.method public vW(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/firstaidkit/d;->vX(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    return-void
.end method

.method public vX(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/firstaidkit/d;->uv:I

    iput-boolean v0, p0, Lcom/miui/firstaidkit/d;->uu:Z

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uB:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uB:Ljava/util/Queue;

    invoke-static {}, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->values()[Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/firstaidkit/d;->uA:Lcom/miui/firstaidkit/b;

    invoke-virtual {v0}, Lcom/miui/firstaidkit/b;->vM()V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/d;->wb(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/d;->vY(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/d;->vZ(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/d;->vV(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/firstaidkit/d;->wa(Lcom/miui/firstaidkit/f;Landroid/os/Handler;)V

    return-void
.end method
