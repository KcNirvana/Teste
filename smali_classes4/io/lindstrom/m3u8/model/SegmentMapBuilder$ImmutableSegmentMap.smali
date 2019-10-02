.class final Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;
.super Ljava/lang/Object;
.source "SegmentMapBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/SegmentMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/SegmentMapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableSegmentMap"
.end annotation


# instance fields
.field private final byteRange:Lio/lindstrom/m3u8/model/ByteRange;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->access$100(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder;->access$200(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/SegmentMapBuilder;Lio/lindstrom/m3u8/model/SegmentMapBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;-><init>(Lio/lindstrom/m3u8/model/SegmentMapBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;)Z
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->equalTo(Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;)Z

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

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentMap{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byteRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->byteRange:Lio/lindstrom/m3u8/model/ByteRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentMapBuilder$ImmutableSegmentMap;->uri:Ljava/lang/String;

    return-object v0
.end method
