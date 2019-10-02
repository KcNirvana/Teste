.class Lio/lindstrom/m3u8/model/SegmentMapBuilder;
.super Ljava/lang/Object;
.source "SegmentMapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;
    }
.end annotation


# static fields
.field private static final INIT_BIT_URI:J = 0x1L


# instance fields
.field private byteRange:Lio/lindstrom/m3u8/model/ByteRange;

.field private initBits:J

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->initBits:J

    instance-of v0, p0, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new SegmentMap.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    return-object p0
.end method

.method private formatRequiredAttributesMessage()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "uri"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build SegmentMap, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lio/lindstrom/m3u8/model/SegmentMap;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;-><init>(Lio/lindstrom/m3u8/model/SegmentMapBuilder;Lio/lindstrom/m3u8/model/SegmentMapBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final byteRange(Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;
    .locals 1

    const-string v0, "byteRange"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    return-object p1
.end method

.method public final byteRange(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/ByteRange;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentMap$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/SegmentMap;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentMap;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentMap;->byteRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->byteRange(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    :cond_0
    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->uri:Ljava/lang/String;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    return-object p1
.end method
