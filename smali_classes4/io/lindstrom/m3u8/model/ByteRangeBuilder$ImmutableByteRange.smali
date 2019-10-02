.class final Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;
.super Ljava/lang/Object;
.source "ByteRangeBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/ByteRange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/ByteRangeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableByteRange"
.end annotation


# instance fields
.field private final length:J

.field private final offset:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/ByteRangeBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/ByteRangeBuilder;->access$100(Lio/lindstrom/m3u8/model/ByteRangeBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    invoke-static {p1}, Lio/lindstrom/m3u8/model/ByteRangeBuilder;->access$200(Lio/lindstrom/m3u8/model/ByteRangeBuilder;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/ByteRangeBuilder;Lio/lindstrom/m3u8/model/ByteRangeBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;-><init>(Lio/lindstrom/m3u8/model/ByteRangeBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;)Z
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    iget-wide v2, p1, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->equalTo(Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;)Z

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

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    return-wide v0
.end method

.method public offset()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ByteRange{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/ByteRangeBuilder$ImmutableByteRange;->offset:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
