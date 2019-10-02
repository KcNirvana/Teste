.class Lio/lindstrom/m3u8/model/ResolutionBuilder;
.super Ljava/lang/Object;
.source "ResolutionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;
    }
.end annotation


# static fields
.field private static final INIT_BIT_HEIGHT:J = 0x2L

.field private static final INIT_BIT_WIDTH:J = 0x1L


# instance fields
.field private height:I

.field private initBits:J

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    instance-of v0, p0, Lio/lindstrom/m3u8/model/Resolution$Builder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use: new Resolution.Builder()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lio/lindstrom/m3u8/model/ResolutionBuilder;)I
    .locals 0

    iget p0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->width:I

    return p0
.end method

.method static synthetic access$200(Lio/lindstrom/m3u8/model/ResolutionBuilder;)I
    .locals 0

    iget p0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->height:I

    return p0
.end method

.method private formatRequiredAttributesMessage()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    const-wide/16 v5, 0x2

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build Resolution, some of required attributes are not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lio/lindstrom/m3u8/model/Resolution;
    .locals 4

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/lindstrom/m3u8/model/ResolutionBuilder$ImmutableResolution;-><init>(Lio/lindstrom/m3u8/model/ResolutionBuilder;Lio/lindstrom/m3u8/model/ResolutionBuilder$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->formatRequiredAttributesMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final from(Lio/lindstrom/m3u8/model/Resolution;)Lio/lindstrom/m3u8/model/Resolution$Builder;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/Resolution;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->width(I)Lio/lindstrom/m3u8/model/Resolution$Builder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/Resolution;->height()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/model/ResolutionBuilder;->height(I)Lio/lindstrom/m3u8/model/Resolution$Builder;

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution$Builder;

    return-object p1
.end method

.method public final height(I)Lio/lindstrom/m3u8/model/Resolution$Builder;
    .locals 4

    iput p1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->height:I

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution$Builder;

    return-object p1
.end method

.method public final width(I)Lio/lindstrom/m3u8/model/Resolution$Builder;
    .locals 4

    iput p1, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->width:I

    iget-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/lindstrom/m3u8/model/ResolutionBuilder;->initBits:J

    move-object p1, p0

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution$Builder;

    return-object p1
.end method
