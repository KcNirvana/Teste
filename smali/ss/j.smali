.class public final Lss/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/j$a;
    }
.end annotation


# static fields
.field public static final a:Lss/j;

.field public static final b:Lss/j;

.field public static final c:Lss/j;

.field private static final d:[Lss/g;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [Lss/g;

    sget-object v1, Lss/g;->aK:Lss/g;

    aput-object v1, v0, v4

    sget-object v1, Lss/g;->aO:Lss/g;

    aput-object v1, v0, v3

    sget-object v1, Lss/g;->W:Lss/g;

    aput-object v1, v0, v5

    sget-object v1, Lss/g;->am:Lss/g;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lss/g;->al:Lss/g;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lss/g;->av:Lss/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/g;->aw:Lss/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/g;->F:Lss/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/g;->J:Lss/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/g;->U:Lss/g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/g;->D:Lss/g;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lss/g;->H:Lss/g;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lss/g;->h:Lss/g;

    aput-object v2, v0, v1

    sput-object v0, Lss/j;->d:[Lss/g;

    new-instance v0, Lss/j$a;

    invoke-direct {v0, v3}, Lss/j$a;-><init>(Z)V

    sget-object v1, Lss/j;->d:[Lss/g;

    invoke-virtual {v0, v1}, Lss/j$a;->a([Lss/g;)Lss/j$a;

    move-result-object v0

    new-array v1, v6, [Lss/ab;

    sget-object v2, Lss/ab;->a:Lss/ab;

    aput-object v2, v1, v4

    sget-object v2, Lss/ab;->b:Lss/ab;

    aput-object v2, v1, v3

    sget-object v2, Lss/ab;->c:Lss/ab;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lss/j$a;->a([Lss/ab;)Lss/j$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lss/j$a;->a(Z)Lss/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/j$a;->a()Lss/j;

    move-result-object v0

    sput-object v0, Lss/j;->a:Lss/j;

    new-instance v0, Lss/j$a;

    sget-object v1, Lss/j;->a:Lss/j;

    invoke-direct {v0, v1}, Lss/j$a;-><init>(Lss/j;)V

    new-array v1, v3, [Lss/ab;

    sget-object v2, Lss/ab;->c:Lss/ab;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lss/j$a;->a([Lss/ab;)Lss/j$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lss/j$a;->a(Z)Lss/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/j$a;->a()Lss/j;

    move-result-object v0

    sput-object v0, Lss/j;->b:Lss/j;

    new-instance v0, Lss/j$a;

    invoke-direct {v0, v4}, Lss/j$a;-><init>(Z)V

    invoke-virtual {v0}, Lss/j$a;->a()Lss/j;

    move-result-object v0

    sput-object v0, Lss/j;->c:Lss/j;

    return-void
.end method

.method private constructor <init>(Lss/j$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/j$a;->a(Lss/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lss/j;->e:Z

    invoke-static {p1}, Lss/j$a;->b(Lss/j$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    invoke-static {p1}, Lss/j$a;->c(Lss/j$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/j;->h:[Ljava/lang/String;

    invoke-static {p1}, Lss/j$a;->d(Lss/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lss/j;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lss/j$a;Lss/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lss/j;-><init>(Lss/j$a;)V

    return-void
.end method

.method static synthetic a(Lss/j;)Z
    .locals 1

    iget-boolean v0, p0, Lss/j;->e:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Lss/ss/i;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lss/j;
    .locals 4

    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lss/j;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lss/ss/i;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lss/j;->h:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lss/j;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lss/ss/i;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lss/ss/i;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lss/ss/i;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Lss/j$a;

    invoke-direct {v2, p0}, Lss/j$a;-><init>(Lss/j;)V

    invoke-virtual {v2, v1}, Lss/j$a;->a([Ljava/lang/String;)Lss/j$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lss/j$a;->b([Ljava/lang/String;)Lss/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/j$a;->a()Lss/j;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lss/j;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/j;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lss/j;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lss/j;)Z
    .locals 1

    iget-boolean v0, p0, Lss/j;->f:Z

    return v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lss/j;->b(Ljavax/net/ssl/SSLSocket;Z)Lss/j;

    move-result-object v0

    iget-object v1, v0, Lss/j;->h:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lss/j;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lss/j;->g:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lss/j;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lss/j;->e:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lss/j;->e:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lss/j;->h:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lss/j;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lss/j;->g:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lss/j;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lss/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lss/g;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lss/j;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lss/j;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lss/g;->a(Ljava/lang/String;)Lss/g;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lss/j;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/j;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lss/ab;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lss/j;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lss/j;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lss/ab;->a(Ljava/lang/String;)Lss/ab;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lss/ss/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lss/j;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lss/j;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lss/j;

    iget-boolean v2, p0, Lss/j;->e:Z

    iget-boolean v3, p1, Lss/j;->e:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lss/j;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lss/j;->g:[Ljava/lang/String;

    iget-object v3, p1, Lss/j;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lss/j;->h:[Ljava/lang/String;

    iget-object v3, p1, Lss/j;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lss/j;->f:Z

    iget-boolean v3, p1, Lss/j;->f:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-boolean v1, p0, Lss/j;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lss/j;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lss/j;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lss/j;->e:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ConnectionSpec()"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lss/j;->g:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lss/j;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lss/j;->h:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lss/j;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lss/j;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "[all enabled]"

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "[all enabled]"

    goto :goto_2
.end method
