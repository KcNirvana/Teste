.class Lcom/kaltura/playkit/player/SourceSelector;
.super Ljava/lang/Object;
.source "SourceSelector.java"


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private final mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

.field private final preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SourceSelector"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/SourceSelector;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    iput-object p2, p0, Lcom/kaltura/playkit/player/SourceSelector;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    return-void
.end method

.method private getFormatsPriorityList()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/PKMediaFormat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->dash:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->hls:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->mp4:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->mp3:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/SourceSelector;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    sget-object v2, Lcom/kaltura/playkit/PKMediaFormat;->dash:Lcom/kaltura/playkit/PKMediaFormat;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/SourceSelector;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kaltura/playkit/player/SourceSelector;->preferredMediaFormat:Lcom/kaltura/playkit/PKMediaFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private getLocalSource()Lcom/kaltura/playkit/PKMediaSource;
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getSources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/PKMediaSource;

    instance-of v2, v1, Lcom/kaltura/playkit/LocalAssetsManager$LocalMediaSource;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static selectSource(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/SourceSelector;

    invoke-direct {v0, p0, p1}, Lcom/kaltura/playkit/player/SourceSelector;-><init>(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaFormat;)V

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/SourceSelector;->getPreferredSource()Lcom/kaltura/playkit/PKMediaSource;

    move-result-object p0

    return-object p0
.end method

.method private sourceByFormat(Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getSources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/SourceSelector;->mediaEntry:Lcom/kaltura/playkit/PKMediaEntry;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method getPreferredSource()Lcom/kaltura/playkit/PKMediaSource;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/kaltura/playkit/player/SourceSelector;->getLocalSource()Lcom/kaltura/playkit/PKMediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/player/SourceSelector;->getFormatsPriorityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/PKMediaFormat;

    invoke-direct {p0, v1}, Lcom/kaltura/playkit/player/SourceSelector;->sourceByFormat(Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/kaltura/playkit/PKMediaSource;->getDrmData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kaltura/playkit/PKDrmParams;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PKDrmParams;->isSchemeSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_4
    return-object v1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
