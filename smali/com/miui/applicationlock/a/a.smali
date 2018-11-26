.class public Lcom/miui/applicationlock/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private adS:Z

.field private adT:Z

.field private adU:Z

.field private adV:I

.field private adW:J

.field private final adX:Lcom/miui/c/d;

.field private adY:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/c/d;->getInstance(Landroid/content/Context;)Lcom/miui/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/a/a;->adX:Lcom/miui/c/d;

    iget-object v0, p0, Lcom/miui/applicationlock/a/a;->adX:Lcom/miui/c/d;

    const-string/jumbo v1, "applicationlock"

    invoke-virtual {v0, v1}, Lcom/miui/c/d;->bzc(Ljava/lang/String;)Lcom/miui/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/c/b;->getResources()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/a/a;->adY:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/c/b;->byU()I

    move-result v1

    iput v1, p0, Lcom/miui/applicationlock/a/a;->adV:I

    invoke-virtual {v0}, Lcom/miui/c/b;->byR()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/applicationlock/a/a;->adU:Z

    invoke-virtual {v0}, Lcom/miui/c/b;->byT()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/applicationlock/a/a;->adW:J

    invoke-virtual {v0}, Lcom/miui/c/b;->byX()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/applicationlock/a/a;->adS:Z

    invoke-virtual {v0}, Lcom/miui/c/b;->byV()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/c/b;->byW()I

    move-result v0

    iget-wide v2, p0, Lcom/miui/applicationlock/a/a;->adW:J

    const-string/jumbo v4, "applicationlock"

    invoke-static {v1, v0, v2, v3, v4}, Lcom/miui/c/f;->bzo(IIJLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/a/a;->adT:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public ajd()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/a/a;->adV:I

    return v0
.end method

.method public aje()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/applicationlock/a/a;->adW:J

    return-wide v0
.end method

.method public ajf(J)Lcom/miui/c/c;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/a/a;->adY:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/a/a;->adY:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/c/c;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public ajg()Lcom/miui/c/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/a/a;->adX:Lcom/miui/c/d;

    return-object v0
.end method

.method public ajh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/a/a;->adS:Z

    return v0
.end method

.method public aji()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/a/a;->adT:Z

    return v0
.end method

.method public ajj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/a/a;->adU:Z

    return v0
.end method

.method public getResources()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/a/a;->adY:Ljava/util/Map;

    return-object v0
.end method
