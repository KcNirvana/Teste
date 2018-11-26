.class Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IIIII)Z
    .locals 2

    const/16 v1, 0x4d

    const/16 v0, 0x43

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const/16 v0, 0x4f

    if-ne p3, v0, :cond_0

    if-ne p4, v1, :cond_0

    if-ne p5, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0
.end method
