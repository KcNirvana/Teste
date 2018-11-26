.class public Lcom/miui/optimizemanage/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zm:Lcom/miui/optimizemanage/b/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/optimizemanage/b/a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/b/a;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/optimizemanage/b/c;->zm:Lcom/miui/optimizemanage/b/a;

    return-void
.end method


# virtual methods
.method public Ao()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b/c;->zm:Lcom/miui/optimizemanage/b/a;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/b/a;->Ai()I

    move-result v0

    return v0
.end method

.method public Ap(I)Lcom/miui/optimizemanage/b/d;
    .locals 4

    new-instance v1, Lcom/miui/optimizemanage/b/d;

    invoke-direct {v1}, Lcom/miui/optimizemanage/b/d;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/optimizemanage/b/c;->zm:Lcom/miui/optimizemanage/b/a;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/b/a;->Ak(I)Lcom/miui/optimizemanage/b/b;

    move-result-object v0

    iget-object v2, v0, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/optimizemanage/b/d;->name:Ljava/lang/String;

    iget v2, v0, Lcom/miui/optimizemanage/b/b;->uid:I

    iput v2, v1, Lcom/miui/optimizemanage/b/d;->uid:I

    iget v2, v0, Lcom/miui/optimizemanage/b/b;->pid:I

    iput v2, v1, Lcom/miui/optimizemanage/b/d;->pid:I

    iget-wide v2, v0, Lcom/miui/optimizemanage/b/b;->yV:J

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zr:J

    iget v2, v0, Lcom/miui/optimizemanage/b/b;->zd:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zu:J

    iget-wide v2, v0, Lcom/miui/optimizemanage/b/b;->yT:J

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zp:J

    iget v2, v0, Lcom/miui/optimizemanage/b/b;->zb:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zs:J

    iget-wide v2, v0, Lcom/miui/optimizemanage/b/b;->yU:J

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zq:J

    iget-wide v2, v0, Lcom/miui/optimizemanage/b/b;->zc:J

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zt:J

    iget-boolean v2, v0, Lcom/miui/optimizemanage/b/b;->yP:Z

    iput-boolean v2, v1, Lcom/miui/optimizemanage/b/d;->zo:Z

    iget-boolean v2, v0, Lcom/miui/optimizemanage/b/b;->zk:Z

    iput-boolean v2, v1, Lcom/miui/optimizemanage/b/d;->zv:Z

    iget-wide v2, v0, Lcom/miui/optimizemanage/b/b;->zf:J

    iput-wide v2, v1, Lcom/miui/optimizemanage/b/d;->zn:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ProcessCpuTrackerWr"

    const-string/jumbo v3, "getStats"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b/c;->zm:Lcom/miui/optimizemanage/b/a;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/b/a;->init()V

    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b/c;->zm:Lcom/miui/optimizemanage/b/a;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/b/a;->update()V

    return-void
.end method
