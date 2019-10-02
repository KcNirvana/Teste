.class Lio/lindstrom/m3u8/model/MediaSegmentBuilder;
.super Ljava/lang/Object;
.source "MediaSegmentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;
    }
.end annotation


# static fields
.field private static final INIT_BIT_DURATION:J = 0x1L

.field private static final INIT_BIT_URI:J = 0x2L

.field private static final OPT_BIT_DISCONTINUITY:J = 0x1L


# instance fields
.field private byteRange:Lio/lindstrom/m3u8/model/ByteRange;

.field private discontinuity:Z

.field private duration:D

.field private initBits:J

.field private optBits:J

.field private programDateTime:Ljava/time/OffsetDateTime;

.field private segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

.field private segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    instance-of v0, p0, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new MediaSegment.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)D
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->duration:D

    return-wide v0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    return-object p0
.end method

.method static synthetic access$500(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/time/OffsetDateTime;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->programDateTime:Ljava/time/OffsetDateTime;

    return-object p0
.end method

.method static synthetic access$600(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/SegmentMap;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    return-object p0
.end method

.method static synthetic access$700(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/SegmentKey;
    .locals 0

    iget-object p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    return-object p0
.end method

.method static synthetic access$800(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Z
    .locals 0

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->discontinuityIsSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->discontinuity:Z

    return p0
.end method

.method private discontinuityIsSet()Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->optBits:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private formatRequiredAttributesMessage()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "duration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "uri"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build MediaSegment, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lio/lindstrom/m3u8/model/MediaSegment;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;-><init>(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;Lio/lindstrom/m3u8/model/MediaSegmentBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final byteRange(Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1

    const-string v0, "byteRange"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final byteRange(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/ByteRange;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaSegment$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final discontinuity(Z)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 4

    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->discontinuity:Z

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->optBits:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->optBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final duration(D)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 2

    iput-wide p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->duration:D

    iget-wide p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    const-wide/16 v0, -0x2

    and-long/2addr p1, v0

    iput-wide p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final from(Lio/lindstrom/m3u8/model/MediaSegment;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 2

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->duration()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->duration(D)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->title()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->title(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->uri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->byteRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->byteRange(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    :cond_1
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->programDateTime()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->programDateTime(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    :cond_2
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->segmentMap()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentMap(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    :cond_3
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->segmentKey()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentKey(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    :cond_4
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->discontinuity()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->discontinuity(Z)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final programDateTime(Ljava/time/OffsetDateTime;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1

    const-string v0, "programDateTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/OffsetDateTime;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->programDateTime:Ljava/time/OffsetDateTime;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final programDateTime(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Ljava/time/OffsetDateTime;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaSegment$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/OffsetDateTime;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->programDateTime:Ljava/time/OffsetDateTime;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final segmentKey(Lio/lindstrom/m3u8/model/SegmentKey;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1

    const-string v0, "segmentKey"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final segmentKey(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/SegmentKey;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaSegment$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final segmentMap(Lio/lindstrom/m3u8/model/SegmentMap;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1

    const-string v0, "segmentMap"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final segmentMap(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "+",
            "Lio/lindstrom/m3u8/model/SegmentMap;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaSegment$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final title(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->title:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final title(Ljava/util/Optional;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/MediaSegment$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->title:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method

.method public final uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->uri:Ljava/lang/String;

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-object p1
.end method
