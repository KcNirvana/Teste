.class final Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;
.super Ljava/lang/Object;
.source "MediaSegmentBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/MediaSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/MediaSegmentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableMediaSegment"
.end annotation


# instance fields
.field private final byteRange:Lio/lindstrom/m3u8/model/ByteRange;

.field private final discontinuity:Z

.field private final duration:D

.field private final programDateTime:Ljava/time/OffsetDateTime;

.field private final segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

.field private final segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

.field private final title:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$100(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)D

    move-result-wide v0

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$200(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$300(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$400(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$500(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Ljava/time/OffsetDateTime;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$600(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/SegmentMap;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$700(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Lio/lindstrom/m3u8/model/SegmentKey;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$800(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder;->access$900(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/lindstrom/m3u8/model/MediaSegment$-CC;->$default$discontinuity(Lio/lindstrom/m3u8/model/MediaSegment;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;Lio/lindstrom/m3u8/model/MediaSegmentBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;-><init>(Lio/lindstrom/m3u8/model/MediaSegmentBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;)Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    iget-boolean p1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public byteRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/ByteRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public discontinuity()Z
    .locals 1

    iget-boolean v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    return v0
.end method

.method public duration()D
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->equalTo(Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-boolean v2, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public programDateTime()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public segmentKey()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/SegmentKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public segmentMap()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/SegmentMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaSegment{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->duration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byteRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "programDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->programDateTime:Ljava/time/OffsetDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "segmentMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentMap:Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "segmentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->segmentKey:Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "discontinuity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->discontinuity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/MediaSegmentBuilder$ImmutableMediaSegment;->uri:Ljava/lang/String;

    return-object v0
.end method
