.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final regions:Landroid/util/SparseArray;

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iput p3, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    return-void
.end method
