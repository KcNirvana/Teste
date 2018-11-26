.class final Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
.super Lcom/google/android/exoplayer2/text/Cue;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    iput p11, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I

    move-result v0

    return v0
.end method
