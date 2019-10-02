.class Lio/lindstrom/m3u8/parser/SegmentMapParser;
.super Lio/lindstrom/m3u8/parser/AbstractLineParser;
.source "SegmentMapParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractLineParser<",
        "Lio/lindstrom/m3u8/model/SegmentMap;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;


# direct methods
.method constructor <init>(Lio/lindstrom/m3u8/parser/ByteRangeParser;)V
    .locals 1

    const-string v0, "#EXT-X-MAP"

    invoke-direct {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractLineParser;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/SegmentMapParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    return-void
.end method

.method static synthetic lambda$writeAttributes$0(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "BYTERANGE"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/SegmentMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-static {}, Lio/lindstrom/m3u8/model/SegmentMap$-CC;->builder()Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object v0

    const-string v1, "URI"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    move-result-object v0

    const-string v1, "BYTERANGE"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/lindstrom/m3u8/parser/SegmentMapParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    const-string v2, "BYTERANGE"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->byteRange(Lio/lindstrom/m3u8/model/ByteRange;)Lio/lindstrom/m3u8/model/SegmentMap$Builder;

    :cond_0
    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/SegmentMap$Builder;->build()Lio/lindstrom/m3u8/model/SegmentMap;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic parseAttributes(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/SegmentMapParser;->parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/SegmentMap;

    move-result-object p1

    return-object p1
.end method

.method writeAttributes(Lio/lindstrom/m3u8/model/SegmentMap;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;-><init>()V

    const-string v1, "URI"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentMap;->uri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentMap;->byteRange()Ljava/util/Optional;

    move-result-object p1

    iget-object v1, p0, Lio/lindstrom/m3u8/parser/SegmentMapParser;->byteRangeParser:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$6Rr9hSilXtJY0_8vxGOAjp4iWB4;

    invoke-direct {v2, v1}, Lio/lindstrom/m3u8/parser/-$$Lambda$6Rr9hSilXtJY0_8vxGOAjp4iWB4;-><init>(Lio/lindstrom/m3u8/parser/ByteRangeParser;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentMapParser$6Pin31-bkh1Ewk3Twfd2EpDFcxA;

    invoke-direct {v1, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentMapParser$6Pin31-bkh1Ewk3Twfd2EpDFcxA;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic writeAttributes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentMap;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/SegmentMapParser;->writeAttributes(Lio/lindstrom/m3u8/model/SegmentMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
