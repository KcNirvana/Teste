.class public Lcom/miui/a/b/a/b;
.super Lcom/miui/a/b/a/a;
.source ""


# static fields
.field private static aYv:Lcom/miui/a/b/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/a/b/a/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/a/b/a/b;
    .locals 2

    const-class v1, Lcom/miui/a/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/a/b/a/b;->aYv:Lcom/miui/a/b/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/a/b/a/b;

    invoke-direct {v0}, Lcom/miui/a/b/a/b;-><init>()V

    sput-object v0, Lcom/miui/a/b/a/b;->aYv:Lcom/miui/a/b/a/b;

    :cond_0
    sget-object v0, Lcom/miui/a/b/a/b;->aYv:Lcom/miui/a/b/a/b;
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
.method public btq(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/f;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/f;->aiO()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
