.class public Lcom/nostra13/universalimageloader/core/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bkq:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;


# instance fields
.field private bkA:Lcom/nostra13/universalimageloader/core/download/c;

.field private bkB:I

.field private bkC:I

.field private bkD:I

.field private bkE:I

.field private bkF:Lcom/nostra13/universalimageloader/b/b/a;

.field private bkG:I

.field private bkH:Lcom/nostra13/universalimageloader/core/d/a;

.field private bkI:Ljava/util/concurrent/Executor;

.field private bkJ:Ljava/util/concurrent/Executor;

.field private bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private bkL:I

.field private bkM:I

.field private bkN:Z

.field private bkr:Z

.field private bks:Z

.field private bkt:Lcom/nostra13/universalimageloader/core/a/a;

.field private bku:Lcom/nostra13/universalimageloader/core/n;

.field private bkv:Z

.field private bkw:Lcom/nostra13/universalimageloader/b/a/a;

.field private bkx:I

.field private bky:Lcom/nostra13/universalimageloader/b/a/a/b;

.field private bkz:J

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->big:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/nostra13/universalimageloader/core/e;->bkq:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkE:I

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkC:I

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkD:I

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkB:I

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkH:Lcom/nostra13/universalimageloader/core/d/a;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkr:Z

    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/e;->bks:Z

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkL:I

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkv:Z

    sget-object v0, Lcom/nostra13/universalimageloader/core/e;->bkq:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkG:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkz:J

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkx:I

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bky:Lcom/nostra13/universalimageloader/b/a/a/b;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkA:Lcom/nostra13/universalimageloader/core/download/c;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->bku:Lcom/nostra13/universalimageloader/core/n;

    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkN:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->context:Landroid/content/Context;

    return-void
.end method

.method private bGP()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkL:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/i;->bHo(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkL:I

    iget v1, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/i;->bHo(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    :goto_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bky:Lcom/nostra13/universalimageloader/b/a/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/i;->bHp()Lcom/nostra13/universalimageloader/b/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bky:Lcom/nostra13/universalimageloader/b/a/a/b;

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->bky:Lcom/nostra13/universalimageloader/b/a/a/b;

    iget-wide v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkz:J

    iget v4, p0, Lcom/nostra13/universalimageloader/core/e;->bkx:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/i;->bHq(Landroid/content/Context;Lcom/nostra13/universalimageloader/b/a/a/b;JI)Lcom/nostra13/universalimageloader/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->context:Landroid/content/Context;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/e;->bkG:I

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/i;->bHr(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    :cond_2
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkv:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nostra13/universalimageloader/b/b/a/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-static {}, Lcom/nostra13/universalimageloader/a/f;->bEn()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/b/b/a/a;-><init>(Lcom/nostra13/universalimageloader/b/b/a;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkA:Lcom/nostra13/universalimageloader/core/download/c;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/i;->bHs(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkA:Lcom/nostra13/universalimageloader/core/download/c;

    :cond_4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkt:Lcom/nostra13/universalimageloader/core/a/a;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkN:Z

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/i;->bHt(Z)Lcom/nostra13/universalimageloader/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkt:Lcom/nostra13/universalimageloader/core/a/a;

    :cond_5
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bku:Lcom/nostra13/universalimageloader/core/n;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/nostra13/universalimageloader/core/n;->bHZ()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bku:Lcom/nostra13/universalimageloader/core/n;

    :cond_6
    return-void

    :cond_7
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkr:Z

    goto :goto_0

    :cond_8
    iput-boolean v3, p0, Lcom/nostra13/universalimageloader/core/e;->bks:Z

    goto :goto_1
.end method

.method static synthetic bGS(Lcom/nostra13/universalimageloader/core/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bGT(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkr:Z

    return v0
.end method

.method static synthetic bGU(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->bks:Z

    return v0
.end method

.method static synthetic bGV(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/a/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkt:Lcom/nostra13/universalimageloader/core/a/a;

    return-object v0
.end method

.method static synthetic bGW(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/n;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bku:Lcom/nostra13/universalimageloader/core/n;

    return-object v0
.end method

.method static synthetic bGX(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    return-object v0
.end method

.method static synthetic bGY(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/download/c;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkA:Lcom/nostra13/universalimageloader/core/download/c;

    return-object v0
.end method

.method static synthetic bGZ(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkB:I

    return v0
.end method

.method static synthetic bHa(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkC:I

    return v0
.end method

.method static synthetic bHb(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkD:I

    return v0
.end method

.method static synthetic bHc(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkE:I

    return v0
.end method

.method static synthetic bHd(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkF:Lcom/nostra13/universalimageloader/b/b/a;

    return-object v0
.end method

.method static synthetic bHe(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkH:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method static synthetic bHf(Lcom/nostra13/universalimageloader/core/e;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic bHg(Lcom/nostra13/universalimageloader/core/e;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic bHh(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic bHi(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkL:I

    return v0
.end method

.method static synthetic bHj(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    return v0
.end method

.method static synthetic bHk(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkN:Z

    return v0
.end method


# virtual methods
.method public bGN(Lcom/nostra13/universalimageloader/b/a/a/b;)Lcom/nostra13/universalimageloader/core/e;
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e;->bky:Lcom/nostra13/universalimageloader/b/a/a/b;

    return-object p0
.end method

.method public bGO(I)Lcom/nostra13/universalimageloader/core/e;
    .locals 2

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkw:Lcom/nostra13/universalimageloader/b/a/a;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkz:J

    return-object p0
.end method

.method public bGQ(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/e;
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e;->bkK:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object p0
.end method

.method public bGR(I)Lcom/nostra13/universalimageloader/core/e;
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkI:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->bkJ:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-ge p1, v2, :cond_2

    iput v2, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    :goto_0
    return-object p0

    :cond_2
    if-le p1, v3, :cond_3

    iput v3, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/nostra13/universalimageloader/core/e;->bkM:I

    goto :goto_0
.end method

.method public build()Lcom/nostra13/universalimageloader/core/d;
    .locals 2

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/e;->bGP()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/d;-><init>(Lcom/nostra13/universalimageloader/core/e;Lcom/nostra13/universalimageloader/core/d;)V

    return-object v0
.end method
