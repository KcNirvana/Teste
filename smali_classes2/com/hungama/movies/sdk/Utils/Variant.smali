.class public final Lcom/hungama/movies/sdk/Utils/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# instance fields
.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/Variant;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method
