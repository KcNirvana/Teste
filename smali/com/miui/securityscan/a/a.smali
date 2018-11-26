.class public Lcom/miui/securityscan/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IL:Lcom/miui/securityscan/a/a;


# instance fields
.field private IE:I

.field private IF:J

.field private IG:Z

.field private IH:Z

.field private II:Z

.field private IJ:Z

.field private IK:Z

.field private IM:Lcom/miui/c/d;

.field private IN:Ljava/util/Map;

.field private IO:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/securityscan/a/a;->IH:Z

    iput-object p1, p0, Lcom/miui/securityscan/a/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/c/d;->getInstance(Landroid/content/Context;)Lcom/miui/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/a/a;->IM:Lcom/miui/c/d;

    iget-object v0, p0, Lcom/miui/securityscan/a/a;->IM:Lcom/miui/c/d;

    const-string/jumbo v3, "securitycenterScan"

    invoke-virtual {v0, v3}, Lcom/miui/c/d;->bzc(Ljava/lang/String;)Lcom/miui/c/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/c/b;->getResources()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/a/a;->IN:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/miui/c/b;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/securityscan/a/a;->IJ:Z

    invoke-virtual {v3}, Lcom/miui/c/b;->byR()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/a/a;->IH:Z

    invoke-virtual {v3}, Lcom/miui/c/b;->byS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/a/a;->IO:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/miui/c/b;->byT()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/securityscan/a/a;->IF:J

    iget-object v0, p0, Lcom/miui/securityscan/a/a;->IM:Lcom/miui/c/d;

    const-string/jumbo v4, "securitycenterScan"

    iget-wide v6, p0, Lcom/miui/securityscan/a/a;->IF:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/miui/c/d;->bzd(Ljava/lang/String;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/a/a;->IG:Z

    invoke-virtual {v3}, Lcom/miui/c/b;->byU()I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/a/a;->IE:I

    iget v0, p0, Lcom/miui/securityscan/a/a;->IE:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Lcom/miui/securityscan/a/a;->IK:Z

    :goto_1
    invoke-virtual {v3}, Lcom/miui/c/b;->byV()I

    move-result v0

    invoke-virtual {v3}, Lcom/miui/c/b;->byW()I

    move-result v1

    iget-wide v2, p0, Lcom/miui/securityscan/a/a;->IF:J

    const-string/jumbo v4, "securitycenterScan"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/c/f;->bzo(IIJLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/a/a;->II:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/miui/securityscan/a/a;->IK:Z

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/a/a;
    .locals 3

    const-class v1, Lcom/miui/securityscan/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/a/a;->IL:Lcom/miui/securityscan/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/a/a;->IL:Lcom/miui/securityscan/a/a;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/a/a;->IL:Lcom/miui/securityscan/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public HX()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/securityscan/a/a;->IL:Lcom/miui/securityscan/a/a;

    return-void
.end method

.method public HY(J)Lcom/miui/c/c;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/a/a;->IN:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/a/a;->IN:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/c/c;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public HZ()Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/miui/securityscan/a/a;->IF:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/securityscan/a/a;->IJ:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/securityscan/a/a;->IG:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/a/a;->II:Z

    :cond_1
    return v0
.end method
