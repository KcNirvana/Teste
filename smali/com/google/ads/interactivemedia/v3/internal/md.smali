.class public Lcom/google/ads/interactivemedia/v3/internal/md;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/mf;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    const/16 v0, 0x25

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "HashCodeBuilder requires an odd initial value"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/lz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "HashCodeBuilder requires an odd multiplier"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/lz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-void
.end method

.method public static varargs a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "The object to build a hash code for must not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/lz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/md;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;-><init>(II)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p2, p0, v0, p3, p5}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/md;Z[Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq p0, p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p2, p0, v0, p3, p5}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/md;Z[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/md;->b()I

    move-result p0

    return p0
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/mf;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/md;Z[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/md;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/md;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/google/ads/interactivemedia/v3/internal/lx;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcom/google/ads/interactivemedia/v3/internal/me;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/md;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/md;->d(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/md;->d(Ljava/lang/Object;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/md;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/mf;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/mf;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/md;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/mf;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/mf;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/md;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/mf;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/mf;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/md;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([J)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([I)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    check-cast p1, [S

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([S)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    check-cast p1, [C

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([C)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([B)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([D)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([F)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([Z)Lcom/google/ads/interactivemedia/v3/internal/md;

    goto :goto_0

    :cond_7
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->a([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/md;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(B)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(C)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(D)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(J)Lcom/google/ads/interactivemedia/v3/internal/md;

    move-result-object p1

    return-object p1
.end method

.method public a(F)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(I)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(J)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(S)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a(Z)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return-object p0
.end method

.method public a([B)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(B)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([C)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(C)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([D)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 4

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(D)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([F)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(F)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([I)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(I)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([J)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 4

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(J)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([S)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(S)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public a([Z)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/md;->a(Z)Lcom/google/ads/interactivemedia/v3/internal/md;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/md;
    .locals 2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/md;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->b:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/md;->c:I

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/md;->b()I

    move-result v0

    return v0
.end method
