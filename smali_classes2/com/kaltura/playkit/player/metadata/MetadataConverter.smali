.class public Lcom/kaltura/playkit/player/metadata/MetadataConverter;
.super Ljava/lang/Object;
.source "MetadataConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 1

    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    invoke-static {p0}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 9

    new-instance v8, Lcom/kaltura/playkit/player/metadata/PKEventMessage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->id:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->messageData:[B

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/kaltura/playkit/player/metadata/PKEventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v8
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 7

    new-instance v6, Lcom/kaltura/playkit/player/metadata/PKApicFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kaltura/playkit/player/metadata/PKApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v6
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 2

    new-instance v0, Lcom/kaltura/playkit/player/metadata/PKBinaryFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->id:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;->data:[B

    invoke-direct {v0, v1, p0}, Lcom/kaltura/playkit/player/metadata/PKBinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->getSubFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->getSubFrame(I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    invoke-static {v1}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v4, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endTimeMs:I

    iget-wide v5, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;->endOffset:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/kaltura/playkit/player/metadata/PKChapterFrame;-><init>(Ljava/lang/String;Ljava/lang/String;IIJJLjava/util/List;)V

    return-object v10
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->children:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->getSubFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->getSubFrame(I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v1

    invoke-static {v1}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->elementId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isRoot:Z

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;->isOrdered:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/kaltura/playkit/player/metadata/PKChapterTocFrame;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/util/List;)V

    return-object v7
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 4

    new-instance v0, Lcom/kaltura/playkit/player/metadata/PKCommentFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/kaltura/playkit/player/metadata/PKCommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 7

    new-instance v6, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;->data:[B

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kaltura/playkit/player/metadata/PKGeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v6
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/player/metadata/PKPrivFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    invoke-direct {v0, v1, v2, p0}, Lcom/kaltura/playkit/player/metadata/PKPrivFrame;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/kaltura/playkit/player/metadata/PKTextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convert(Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;)Lcom/kaltura/playkit/player/metadata/PKMetadata;
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/player/metadata/PKUrlLinkFrame;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/kaltura/playkit/player/metadata/PKUrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convert(Lcom/google/android/exoplayer2/metadata/Metadata;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/kaltura/playkit/player/metadata/PKMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
