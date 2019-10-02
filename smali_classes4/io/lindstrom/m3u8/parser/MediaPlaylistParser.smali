.class public Lio/lindstrom/m3u8/parser/MediaPlaylistParser;
.super Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;
.source "MediaPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractPlaylistParser<",
        "Lio/lindstrom/m3u8/model/MediaPlaylist;",
        "Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

.field private final segmentKeyParser:Lio/lindstrom/m3u8/parser/SegmentKeyParser;

.field private final segmentMapParser:Lio/lindstrom/m3u8/parser/SegmentMapParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lio/lindstrom/m3u8/parser/AbstractPlaylistParser;-><init>()V

    new-instance v0, Lio/lindstrom/m3u8/parser/ByteRangeParser;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/ByteRangeParser;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    new-instance v0, Lio/lindstrom/m3u8/parser/SegmentMapParser;

    iget-object v1, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    invoke-direct {v0, v1}, Lio/lindstrom/m3u8/parser/SegmentMapParser;-><init>(Lio/lindstrom/m3u8/parser/ByteRangeParser;)V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentMapParser:Lio/lindstrom/m3u8/parser/SegmentMapParser;

    new-instance v0, Lio/lindstrom/m3u8/parser/SegmentKeyParser;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/SegmentKeyParser;-><init>()V

    iput-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentKeyParser:Lio/lindstrom/m3u8/parser/SegmentKeyParser;

    return-void
.end method

.method static synthetic lambda$write$0(Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/PlaylistType;)V
    .locals 1

    const-string v0, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/PlaylistType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic lambda$write$1(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/MediaSegment;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->writeMediaSegment(Lio/lindstrom/m3u8/model/MediaSegment;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic lambda$writeMediaSegment$2(Ljava/lang/StringBuilder;Ljava/time/OffsetDateTime;)V
    .locals 1

    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic lambda$writeMediaSegment$3(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/SegmentMap;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentMapParser:Lio/lindstrom/m3u8/parser/SegmentMapParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/SegmentMapParser;->write(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic lambda$writeMediaSegment$4(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/ByteRange;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->write(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic lambda$writeMediaSegment$5(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/SegmentKey;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentKeyParser:Lio/lindstrom/m3u8/parser/SegmentKeyParser;

    invoke-virtual {v0, p2, p1}, Lio/lindstrom/m3u8/parser/SegmentKeyParser;->write(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private writeMediaSegment(Lio/lindstrom/m3u8/model/MediaSegment;Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->discontinuity()Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->programDateTime()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ROkRc979svUVoi8keM9O5Cy0ff0;

    invoke-direct {v2, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ROkRc979svUVoi8keM9O5Cy0ff0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->segmentMap()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ayi9kGFW1Lcfgg98hRbxa764eRA;

    invoke-direct {v2, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$ayi9kGFW1Lcfgg98hRbxa764eRA;-><init>(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "#EXTINF"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->duration()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->title()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$i4Y8l7NGzGcdvNMRK0rkOJVjesg;

    invoke-direct {v2, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$i4Y8l7NGzGcdvNMRK0rkOJVjesg;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->byteRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;

    invoke-direct {v2, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$F9KU41g1LzIeAv1qOaZw-4V3_is;-><init>(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->segmentKey()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$P55UR1GrL0vOoUCApmb_IOJCbOA;

    invoke-direct {v2, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$P55UR1GrL0vOoUCApmb_IOJCbOA;-><init>(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaSegment;->uri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method build(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist;
    .locals 0

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$000(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->build()Lio/lindstrom/m3u8/model/MediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic build(Ljava/lang/Object;)Lio/lindstrom/m3u8/model/Playlist;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->build(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method newBuilder()Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;-><init>()V

    return-object v0
.end method

.method bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->newBuilder()Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;

    move-result-object v0

    return-object v0
.end method

.method onTag(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;",
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

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$000(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    move-result-object p4

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$100(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "#EXT-X-VERSION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "#EXT-X-DATERANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_8
    const-string v0, "#EXT-X-MAP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_a
    const-string v0, "#EXTINF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_e
    const-string v0, "#EXT-X-START"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_f
    const-string v0, "#EXT-X-TARGETDURATION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    invoke-virtual {p1, v3}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->discontinuity(Z)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto/16 :goto_2

    :pswitch_1
    iget-object p2, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentKeyParser:Lio/lindstrom/m3u8/parser/SegmentKeyParser;

    invoke-virtual {p2, p3}, Lio/lindstrom/m3u8/parser/SegmentKeyParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->segmentKey(Lio/lindstrom/m3u8/model/SegmentKey;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->mediaSequence(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p4, v1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->ongoing(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_4
    iget-object p2, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->segmentMapParser:Lio/lindstrom/m3u8/parser/SegmentMapParser;

    invoke-virtual {p2, p3}, Lio/lindstrom/m3u8/parser/SegmentMapParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->segmentMap(Lio/lindstrom/m3u8/model/SegmentMap;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto :goto_2

    :pswitch_5
    invoke-static {p3}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->programDateTime(Ljava/time/OffsetDateTime;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto :goto_2

    :pswitch_6
    const-string p2, ","

    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    aget-object p3, p2, v1

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->duration(D)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    array-length p3, p2

    if-ne p3, v2, :cond_1

    aget-object p3, p2, v3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->title(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto :goto_2

    :pswitch_7
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->targetDuration(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_8
    iget-object p2, p0, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    invoke-virtual {p2, p3}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->byteRange(Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    goto :goto_2

    :pswitch_9
    invoke-virtual {p4, v3}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->iFramesOnly(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_a
    invoke-static {p3}, Lio/lindstrom/m3u8/model/PlaylistType;->valueOf(Ljava/lang/String;)Lio/lindstrom/m3u8/model/PlaylistType;

    move-result-object p1

    invoke-virtual {p4, p1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->playlistType(Lio/lindstrom/m3u8/model/PlaylistType;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_b
    invoke-virtual {p4, v3}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->independentSegments(Z)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    goto :goto_2

    :pswitch_c
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->version(I)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dec60d7 -> :sswitch_f
        -0x6e22c542 -> :sswitch_e
        -0x65ade149 -> :sswitch_d
        -0x6315e26f -> :sswitch_c
        -0x5f3360ab -> :sswitch_b
        -0x49c823fd -> :sswitch_a
        -0x40d90045 -> :sswitch_9
        -0x40d8f948 -> :sswitch_8
        0x856c6ab -> :sswitch_7
        0x15836834 -> :sswitch_6
        0x2cbb0cae -> :sswitch_5
        0x4a7895df -> :sswitch_4
        0x4b69bcd1 -> :sswitch_3
        0x681ab1da -> :sswitch_2
        0x6c0c576b -> :sswitch_1
        0x7204ae54 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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

    check-cast p1, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->onTag(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)V

    return-void
.end method

.method onURI(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$100(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$000(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    move-result-object p2

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$100(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/MediaSegment$Builder;->build()Lio/lindstrom/m3u8/model/MediaSegment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;->addMediaSegments(Lio/lindstrom/m3u8/model/MediaSegment;)Lio/lindstrom/m3u8/model/MediaPlaylist$Builder;

    invoke-static {}, Lio/lindstrom/m3u8/model/MediaSegment$-CC;->builder()Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    move-result-object p2

    invoke-static {p1, p2}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;->access$102(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Lio/lindstrom/m3u8/model/MediaSegment$Builder;)Lio/lindstrom/m3u8/model/MediaSegment$Builder;

    return-void
.end method

.method bridge synthetic onURI(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    check-cast p1, Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;

    invoke-virtual {p0, p1, p2}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->onURI(Lio/lindstrom/m3u8/parser/MediaPlaylistParser$Builder;Ljava/lang/String;)V

    return-void
.end method

.method write(Lio/lindstrom/m3u8/model/MediaPlaylist;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->iFramesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->playlistType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$MIXbdsrXzIjBveKQCJ403LP79PU;

    invoke-direct {v1, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$MIXbdsrXzIjBveKQCJ403LP79PU;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "#EXT-X-TARGETDURATION"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->targetDuration()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->mediaSequence()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->mediaSegments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$BUVBfXKOjcsTaWSJpmxeE4OlePc;

    invoke-direct {v1, p0, p2}, Lio/lindstrom/m3u8/parser/-$$Lambda$MediaPlaylistParser$BUVBfXKOjcsTaWSJpmxeE4OlePc;-><init>(Lio/lindstrom/m3u8/parser/MediaPlaylistParser;Ljava/lang/StringBuilder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/MediaPlaylist;->ongoing()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "#EXT-X-ENDLIST"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method bridge synthetic write(Lio/lindstrom/m3u8/model/Playlist;Ljava/lang/StringBuilder;)V
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/MediaPlaylist;

    invoke-virtual {p0, p1, p2}, Lio/lindstrom/m3u8/parser/MediaPlaylistParser;->write(Lio/lindstrom/m3u8/model/MediaPlaylist;Ljava/lang/StringBuilder;)V

    return-void
.end method
