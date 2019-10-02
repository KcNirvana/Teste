.class public final Lcom/hungama/movies/sdk/f/b;
.super Ljava/lang/Object;
.source "TrackSelectionHelper.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

.field private d:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private e:I

.field private f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private g:[Z

.field private h:Z

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private k:I

.field private l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private m:[Z

.field private n:Z

.field private o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iput-object p1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lcom/hungama/movies/sdk/f/b;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    return-void
.end method

.method private a(I)I
    .locals 4

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v2, -0x1

    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v3, p1, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "0"

    return-object p0
.end method

.method private a(I[IZ)V
    .locals 0

    new-instance p3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iput-object p3, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;I)[I
    .locals 1

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aput p2, p1, v0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    aget v1, v2, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public a(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/hungama/movies/sdk/f/b;->k:I

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/f/b;->n:Z

    iput-object p1, p0, Lcom/hungama/movies/sdk/f/b;->j:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v1, p0, Lcom/hungama/movies/sdk/f/b;->k:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->m:[Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->m:[Z

    iget-object v3, p0, Lcom/hungama/movies/sdk/f/b;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/hungama/movies/sdk/f/b;->k:I

    invoke-virtual {p1, v3, v1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3
    iget v4, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    return-object p1
.end method

.method public a(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;II)V
    .locals 10

    iput-object p1, p0, Lcom/hungama/movies/sdk/f/b;->d:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput p2, p0, Lcom/hungama/movies/sdk/f/b;->e:I

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->clearSelectionOverrides(I)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iput-boolean v0, p0, Lcom/hungama/movies/sdk/f/b;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->g:[Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->g:[Z

    iget-object v4, p0, Lcom/hungama/movies/sdk/f/b;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    if-eqz v4, :cond_1

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/hungama/movies/sdk/f/b;->h:Z

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v1, p2, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v1

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget v4, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/hungama/movies/sdk/f/b;->g:[Z

    aget-boolean v5, v5, v1

    const/4 v5, 0x0

    :goto_3
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_6

    invoke-virtual {p1, p2, v1, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v7, v6, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_5

    const-string v7, "VideoFormat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " >> height >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hungama/movies/sdk/a/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-ne p3, v6, :cond_5

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->g:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-eq v2, v1, :cond_3

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget-object v4, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {p0, v4, v5}, Lcom/hungama/movies/sdk/f/b;->a(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;I)[I

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iput-object v2, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_5

    :cond_4
    :goto_4
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v4, v3, [I

    aput v5, v4, v0

    invoke-direct {v2, v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iput-object v2, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    iget-object p3, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-direct {p0, p1, p3, v3}, Lcom/hungama/movies/sdk/f/b;->a(I[IZ)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-boolean p3, p0, Lcom/hungama/movies/sdk/f/b;->n:Z

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setRendererDisabled(IZ)V

    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object p3, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)V

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->clearSelectionOverrides(I)V

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->clearSelectionOverrides(I)V

    :goto_8
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "TrackSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolutions selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/f/b;->a(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-direct {v1, v3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iput-object v1, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    iget v0, p0, Lcom/hungama/movies/sdk/f/b;->k:I

    iget-object v1, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hungama/movies/sdk/f/b;->k:I

    iget-boolean v2, p0, Lcom/hungama/movies/sdk/f/b;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/f/b;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->d:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->j:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/hungama/movies/sdk/f/b;->o:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    return-void
.end method
