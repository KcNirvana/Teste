.class public Lio/lindstrom/m3u8/parser/MasterPlaylistParser;
.super Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;
.source "MasterPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractPlaylistParser<",
        "Lio/lindstrom/m3u8/model/MasterPlaylist;",
        "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final alternativeRenditionParser:Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;

.field private final iFrameParser:Lio/lindstrom/m3u8/parser/IFrameParser;

.field private final variantParser:Lio/lindstrom/m3u8/parser/VariantParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;-><init>()V

    new-instance v0, Lio/lindstrom/m3u8/parser/VariantParser;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/VariantParser;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->variantParser:Lio/lindstrom/m3u8/parser/VariantParser;

    new-instance v0, Lio/lindstrom/m3u8/parser/IFrameParser;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/IFrameParser;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->iFrameParser:Lio/lindstrom/m3u8/parser/IFrameParser;

    new-instance v0, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->alternativeRenditionParser:Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;

    return-void
.end method

.method public static synthetic lambda$write$0(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/AlternativeRendition;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->alternativeRenditionParser:Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->write(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic lambda$write$1(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/Variant;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->variantParser:Lio/lindstrom/m3u8/parser/VariantParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/VariantParser;->write(Lio/lindstrom/m3u8/model/Variant;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic lambda$write$2(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/IFrameVariant;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->iFrameParser:Lio/lindstrom/m3u8/parser/IFrameParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/IFrameParser;->write(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method build(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;)Lio/lindstrom/m3u8/model/MasterPlaylist;
    .locals 0

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->build()Lio/lindstrom/m3u8/model/MasterPlaylist;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic build(Ljava/lang/Object;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->build(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;)Lio/lindstrom/m3u8/model/MasterPlaylist;

    move-result-object p1

    return-object p1
.end method

.method newBuilder()Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;
    .locals 1

    invoke-static {}, Lio/lindstrom/m3u8/model/MasterPlaylist$-CC;->builder()Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->newBuilder()Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    move-result-object v0

    return-object v0
.end method

.method onTag(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "#EXT-X-STREAM-INF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "#EXT-X-SESSION-KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "#EXT-X-VERSION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "#EXT-X-SESSION-DATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "#EXT-X-START"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "#EXT-X-MEDIA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid line: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tag not implemented: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1, v1}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->independentSegments(Z)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    goto :goto_2

    :pswitch_2
    iget-object p2, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->iFrameParser:Lio/lindstrom/m3u8/parser/IFrameParser;

    invoke-virtual {p2, p3}, Lio/lindstrom/m3u8/parser/IFrameParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/lindstrom/m3u8/model/IFrameVariant;

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->addIFrameVariants(Lio/lindstrom/m3u8/model/IFrameVariant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    goto :goto_2

    :pswitch_3
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p4, "#"

    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->variantParser:Lio/lindstrom/m3u8/parser/VariantParser;

    const-string v0, "URI"

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p4, p3, p2}, Lio/lindstrom/m3u8/parser/VariantParser;->parse(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/lindstrom/m3u8/model/Variant;

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->addVariants(Lio/lindstrom/m3u8/model/Variant;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    goto :goto_2

    :cond_1
    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected URI, got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object p2, p0, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->alternativeRenditionParser:Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;

    invoke-virtual {p2, p3}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/lindstrom/m3u8/model/AlternativeRendition;

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->addAlternativeRenditions(Lio/lindstrom/m3u8/model/AlternativeRendition;)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    goto :goto_2

    :pswitch_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;->version(I)Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e7e19c0 -> :sswitch_7
        -0x6e22c542 -> :sswitch_6
        -0x6b17dd5b -> :sswitch_5
        -0x65ade149 -> :sswitch_4
        0x15836834 -> :sswitch_3
        0x2e181be4 -> :sswitch_2
        0x67b952f8 -> :sswitch_1
        0x7e8a687c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic onTag(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->onTag(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V

    return-void
.end method

.method onURI(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    const-string p2, "Unexpected URI in master playlist"

    invoke-direct {p1, p2}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method bridge synthetic onURI(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;

    invoke-virtual {p0, p1, p2}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->onURI(Lio/lindstrom/m3u8/model/MasterPlaylist$Builder;Ljava/lang/String;)V

    return-void
.end method

.method write(Lio/lindstrom/m3u8/model/MasterPlaylist;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->alternativeRenditions()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$nZhfpZUvLjZwahBjhsjJVVyMF2E;

    invoke-direct {v1, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$nZhfpZUvLjZwahBjhsjJVVyMF2E;-><init>(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->variants()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;

    invoke-direct {v1, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;-><init>(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MasterPlaylist;->iFrameVariants()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$QahyJXmiCbksjpXS_rXWSEffosc;

    invoke-direct {v0, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$QahyJXmiCbksjpXS_rXWSEffosc;-><init>(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method bridge synthetic write(Lio/lindstrom/m3u8/model/Playlist;Ljava/lang/StringBuilder;)V
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/MasterPlaylist;

    invoke-virtual {p0, p1, p2}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->write(Lio/lindstrom/m3u8/model/MasterPlaylist;Ljava/lang/StringBuilder;)V

    return-void
.end method
