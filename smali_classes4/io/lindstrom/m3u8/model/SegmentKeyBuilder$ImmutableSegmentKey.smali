.class final Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;
.super Ljava/lang/Object;
.source "SegmentKeyBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/SegmentKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/SegmentKeyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableSegmentKey"
.end annotation


# instance fields
.field private final iv:Ljava/lang/String;

.field private final keyFormat:Ljava/lang/String;

.field private final keyFormatVersions:Ljava/lang/String;

.field private final method:Lio/lindstrom/m3u8/model/KeyMethod;

.field private final uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->access$100(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->access$200(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->access$300(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->access$400(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder;->access$500(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;Lio/lindstrom/m3u8/model/SegmentKeyBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;-><init>(Lio/lindstrom/m3u8/model/SegmentKeyBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;)Z
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/KeyMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

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
    instance-of v1, p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->equalTo(Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;)Z

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

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/KeyMethod;->hashCode()I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public iv()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public keyFormat()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public keyFormatVersions()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public method()Lio/lindstrom/m3u8/model/KeyMethod;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->method:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->iv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keyFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "keyFormatVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->keyFormatVersions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/SegmentKeyBuilder$ImmutableSegmentKey;->uri:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
