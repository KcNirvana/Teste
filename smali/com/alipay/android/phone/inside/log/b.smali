.class public Lcom/alipay/android/phone/inside/log/b;
.super Ljava/lang/Object;
.source "LogCollect.java"


# static fields
.field static a:Lcom/alipay/android/phone/inside/log/b;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/log/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/log/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/log/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/android/phone/inside/log/f/h;

.field private g:Lcom/alipay/android/phone/inside/log/f/e;

.field private h:Lcom/alipay/android/phone/inside/log/f/b;

.field private i:Lcom/alipay/android/phone/inside/log/f/f;

.field private j:Lcom/alipay/android/phone/inside/log/f/d;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/inside/log/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/log/b;->a:Lcom/alipay/android/phone/inside/log/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/b;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/b;->a:Lcom/alipay/android/phone/inside/log/b;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/b;->a:Lcom/alipay/android/phone/inside/log/b;

    return-object v0
.end method

.method private a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/phone/inside/log/c/a;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/phone/inside/log/f/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/inside/log/c/a;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/android/phone/inside/log/f/a;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/log/c/a;->c:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/c/a;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/log/f/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/f/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alipay/android/phone/inside/log/c/a;->f:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/log/f/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/f/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/log/c/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/android/phone/inside/log/c/a;->e:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alipay/android/phone/inside/log/c/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/log/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->j()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/inside/log/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->l()V

    return-void
.end method

.method private d()Lcom/alipay/android/phone/inside/log/f/h;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/f/h;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->f:Lcom/alipay/android/phone/inside/log/f/h;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->f:Lcom/alipay/android/phone/inside/log/f/h;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/log/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/log/f/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->f:Lcom/alipay/android/phone/inside/log/f/h;

    return-object v0
.end method

.method private e()Lcom/alipay/android/phone/inside/log/f/e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->g:Lcom/alipay/android/phone/inside/log/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/e;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/f/e;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->g:Lcom/alipay/android/phone/inside/log/f/e;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->g:Lcom/alipay/android/phone/inside/log/f/e;

    return-object v0
.end method

.method private f()Lcom/alipay/android/phone/inside/log/f/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->h:Lcom/alipay/android/phone/inside/log/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/f/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->h:Lcom/alipay/android/phone/inside/log/f/b;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->h:Lcom/alipay/android/phone/inside/log/f/b;

    return-object v0
.end method

.method private g()Lcom/alipay/android/phone/inside/log/f/f;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->i:Lcom/alipay/android/phone/inside/log/f/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/f;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/f/f;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->i:Lcom/alipay/android/phone/inside/log/f/f;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->i:Lcom/alipay/android/phone/inside/log/f/f;

    return-object v0
.end method

.method private h()Lcom/alipay/android/phone/inside/log/f/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->j:Lcom/alipay/android/phone/inside/log/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/f/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/f/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->j:Lcom/alipay/android/phone/inside/log/f/d;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->j:Lcom/alipay/android/phone/inside/log/f/d;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/inside/log/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/inside/log/c;-><init>(Lcom/alipay/android/phone/inside/log/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/inside/log/e;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/inside/log/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/log/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b/a;->a()Lcom/alipay/android/phone/inside/log/api/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/inside/log/api/a;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/inside/log/e;

    invoke-direct {v2, v1}, Lcom/alipay/android/phone/inside/log/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/inside/log/e;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 11

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->d()Lcom/alipay/android/phone/inside/log/f/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->e()Lcom/alipay/android/phone/inside/log/f/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->f()Lcom/alipay/android/phone/inside/log/f/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->g()Lcom/alipay/android/phone/inside/log/f/f;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->h()Lcom/alipay/android/phone/inside/log/f/d;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/android/phone/inside/log/b;->a(Lcom/alipay/android/phone/inside/log/f/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/inside/log/b;->c:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/inside/log/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/inside/log/b;->e:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/alipay/android/phone/inside/log/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/phone/inside/log/b;->d:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/alipay/android/phone/inside/log/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/android/phone/inside/log/b;->b:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/alipay/android/phone/inside/log/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/android/phone/inside/log/b;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/alipay/android/phone/inside/log/b;->e:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/alipay/android/phone/inside/log/b;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    iget-object v9, p0, Lcom/alipay/android/phone/inside/log/b;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v5, v9, v0

    const/4 v0, 0x6

    aput-object v6, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/inside/log/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/phone/inside/log/f/c;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/alipay/android/phone/inside/log/f/g;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/alipay/android/phone/inside/log/f/i;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/b;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "LogCollect::submit > log empty, return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/inside/log/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/inside/log/d;-><init>(Lcom/alipay/android/phone/inside/log/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
