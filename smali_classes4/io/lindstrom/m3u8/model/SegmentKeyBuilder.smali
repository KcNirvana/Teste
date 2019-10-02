.class Lio/lindstrom/m3u8/model/SegmentKeyBuilder;
.super Ljava/lang/Object;
.source "SegmentKeyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;
    }
.end annotation


# static fields
.field private static final INIT_BIT_METHOD:J = 0x1L


# instance fields
.field private initBits:J

.field private iv:Ljava/lang/String;

.field private keyFormat:Ljava/lang/String;

.field private keyFormatVersions:Ljava/lang/String;

.field private method:Lio/lindstrom/m3u8/model/KeyMethod;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->initBits:J

    instance-of v0, p0, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new SegmentKey.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Lio/lindstrom/m3u8/model/KeyMethod;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    return-object p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->iv:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormatVersions:Ljava/lang/String;

    return-object p0
.end method

.method private formatRequiredAttributesMessage()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "method"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build SegmentKey, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lio/lindstrom/m3u8/model/SegmentKey;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;-><init>(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;Lio/lindstrom/m3u8/model/SegmentKeyBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final from(Lio/lindstrom/m3u8/model/SegmentKey;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->method()Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->method(Lio/lindstrom/m3u8/model/KeyMethod;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->uri()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->uri(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->iv()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->iv(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_1
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->keyFormat()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormat(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_2
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->keyFormatVersions()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormatVersions(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_3
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final iv(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1

    const-string v0, "iv"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->iv:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final iv(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentKey$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->iv:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final keyFormat(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1

    const-string v0, "keyFormat"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormat:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final keyFormat(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentKey$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormat:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final keyFormatVersions(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1

    const-string v0, "keyFormatVersions"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormatVersions:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final keyFormatVersions(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentKey$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->keyFormatVersions:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final method(Lio/lindstrom/m3u8/model/KeyMethod;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 4

    const-string v0, "method"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/KeyMethod;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->uri:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method

.method public final uri(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentKey$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->uri:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    return-object p1
.end method
