.class public final Lss/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lss/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/j;->a(Lss/j;)Z

    move-result v0

    iput-boolean v0, p0, Lss/j$a;->a:Z

    invoke-static {p1}, Lss/j;->b(Lss/j;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/j$a;->b:[Ljava/lang/String;

    invoke-static {p1}, Lss/j;->c(Lss/j;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/j$a;->c:[Ljava/lang/String;

    invoke-static {p1}, Lss/j;->d(Lss/j;)Z

    move-result v0

    iput-boolean v0, p0, Lss/j$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lss/j$a;->a:Z

    return-void
.end method

.method static synthetic a(Lss/j$a;)Z
    .locals 1

    iget-boolean v0, p0, Lss/j$a;->a:Z

    return v0
.end method

.method static synthetic b(Lss/j$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/j$a;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/j$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/j$a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lss/j$a;)Z
    .locals 1

    iget-boolean v0, p0, Lss/j$a;->d:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lss/j$a;
    .locals 2

    iget-boolean v0, p0, Lss/j$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lss/j$a;->d:Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lss/j$a;
    .locals 2

    iget-boolean v0, p0, Lss/j$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lss/j$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs a([Lss/ab;)Lss/j$a;
    .locals 3

    iget-boolean v0, p0, Lss/j$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lss/ab;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lss/j$a;->b([Ljava/lang/String;)Lss/j$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lss/g;)Lss/j$a;
    .locals 3

    iget-boolean v0, p0, Lss/j$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, Lss/g;->aS:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lss/j$a;->a([Ljava/lang/String;)Lss/j$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/j;
    .locals 2

    new-instance v0, Lss/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/j;-><init>(Lss/j$a;Lss/j$1;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lss/j$a;
    .locals 2

    iget-boolean v0, p0, Lss/j$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lss/j$a;->c:[Ljava/lang/String;

    return-object p0
.end method
