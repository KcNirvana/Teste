.class abstract Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final output:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V

    goto :goto_0
.end method

.method protected abstract parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
.end method

.method protected abstract parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
.end method

.method public abstract seek()V
.end method
