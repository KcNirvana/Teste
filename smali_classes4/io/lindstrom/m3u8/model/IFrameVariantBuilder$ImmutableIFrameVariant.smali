.class final Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;
.super Ljava/lang/Object;
.source "IFrameVariantBuilder.java"

# interfaces
.implements Lio/lindstrom/m3u8/model/IFrameVariant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/IFrameVariantBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableIFrameVariant"
.end annotation


# instance fields
.field private final averageBandwidth:Ljava/lang/Long;

.field private final bandwidth:J

.field private final codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hdcpLevel:Ljava/lang/String;

.field private final programId:Ljava/lang/Integer;

.field private final resolution:Lio/lindstrom/m3u8/model/Resolution;

.field private final uri:Ljava/lang/String;

.field private final video:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$100(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$200(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$300(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$400(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$500(ZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$600(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Lio/lindstrom/m3u8/model/Resolution;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$700(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$800(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    invoke-static {p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder;->access$900(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;Lio/lindstrom/m3u8/model/IFrameVariantBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;-><init>(Lio/lindstrom/m3u8/model/IFrameVariantBuilder;)V

    return-void
.end method

.method private equalTo(Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;)Z
    .locals 4

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    iget-wide v2, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    iget-object v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    iget-object p1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

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
.method public averageBandwidth()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bandwidth()J
    .locals 2

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    return-wide v0
.end method

.method public codecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;

    if-eqz v1, :cond_1

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;

    invoke-direct {p0, p1}, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->equalTo(Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2a0a0

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x1505

    shl-int/lit8 v0, v1, 0x5

    iget-wide v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x5

    iget-object v2, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public hdcpLevel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public programId()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public resolution()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lio/lindstrom/m3u8/model/Resolution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IFrameVariant{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->bandwidth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "averageBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->averageBandwidth:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->codecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->resolution:Lio/lindstrom/m3u8/model/Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hdcpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->hdcpLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "programId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->programId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public video()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/lindstrom/m3u8/model/IFrameVariantBuilder$ImmutableIFrameVariant;->video:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
