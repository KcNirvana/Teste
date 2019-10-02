.class public Lcom/hungama/movies/sdk/c;
.super Ljava/lang/Object;
.source "VideoQualityStreamingController.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static final b:Ljava/lang/CharSequence;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "p"

    sput-object v0, Lcom/hungama/movies/sdk/c;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/c;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hungama/movies/sdk/c;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {p1}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result p1

    return p1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/hungama/movies/sdk/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    const-string v7, "bandwidh"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {v9}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {v7}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x352

    const/4 v9, 0x1

    if-lez v7, :cond_0

    if-gt v7, v8, :cond_0

    if-nez v3, :cond_0

    sget-object v3, Lcom/hungama/movies/sdk/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_0
    const/16 v10, 0x7d0

    if-le v7, v8, :cond_1

    if-gt v7, v10, :cond_1

    if-nez v4, :cond_1

    sget-object v4, Lcom/hungama/movies/sdk/a/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_1
    const/16 v8, 0x1194

    if-le v7, v10, :cond_2

    if-gt v7, v8, :cond_2

    if-nez v5, :cond_2

    sget-object v5, Lcom/hungama/movies/sdk/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_2
    if-le v7, v8, :cond_3

    if-nez v6, :cond_3

    sget-object v6, Lcom/hungama/movies/sdk/a/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a([Lcom/hungama/movies/sdk/Utils/Variant;)V
    .locals 8

    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->height:I

    if-gtz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v4, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-direct {v4}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/hungama/movies/sdk/c;->b:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setProgressResolution(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/hungama/movies/sdk/Utils/Variant;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setUrl(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->bitrate:I

    div-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "kbps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setDisplayBandwidth(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v4, v5}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setBandwidth(I)V

    iget-object v3, v3, Lcom/hungama/movies/sdk/Utils/Variant;->format:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v4, v3}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setQuality(I)V

    iget-object v3, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v3, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hungama/movies/sdk/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getProgressResolution()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bitrate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/hungama/movies/sdk/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " not listing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getProgressResolution()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " bitrate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v7, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    invoke-virtual {v7}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->getBandwidth()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    const/16 v8, 0x352

    const/4 v9, 0x1

    if-lez v7, :cond_0

    if-gt v7, v8, :cond_0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    sget-object v10, Lcom/hungama/movies/sdk/a/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setmQuality(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_0
    const/16 v10, 0x7d0

    if-le v7, v8, :cond_1

    if-gt v7, v10, :cond_1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    sget-object v8, Lcom/hungama/movies/sdk/a/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setmQuality(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_1
    const/16 v8, 0x1194

    if-le v7, v10, :cond_2

    if-gt v7, v8, :cond_2

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    sget-object v10, Lcom/hungama/movies/sdk/a/b;->g:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setmQuality(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_2
    if-le v7, v8, :cond_3

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;

    sget-object v7, Lcom/hungama/movies/sdk/a/b;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hungama/movies/sdk/Utils/M3u8MetaData;->setmQuality(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/c;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hungama/movies/sdk/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/hungama/movies/sdk/c;->d:Ljava/util/ArrayList;

    :cond_1
    iput-object v1, p0, Lcom/hungama/movies/sdk/c;->e:Ljava/util/ArrayList;

    return-void
.end method
