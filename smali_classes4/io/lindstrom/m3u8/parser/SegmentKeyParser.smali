.class Lio/lindstrom/m3u8/parser/SegmentKeyParser;
.super Lio/lindstrom/m3u8/parser/AbstractLineParser;
.source "SegmentKeyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractLineParser<",
        "Lio/lindstrom/m3u8/model/SegmentKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "#EXT-X-KEY"

    invoke-direct {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractLineParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$0(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "URI"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$1(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "IV"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$2(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "KEYFORMAT"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$3(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "KEYFORMATVERSIONS"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/SegmentKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/SegmentKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-static {}, Lio/lindstrom/m3u8/model/SegmentKey$-CC;->builder()Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    move-result-object v0

    const-string v1, "METHOD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/lindstrom/m3u8/model/KeyMethod;->parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->method(Lio/lindstrom/m3u8/model/KeyMethod;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    const-string v1, "URI"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "URI"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_0
    const-string v1, "IV"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IV"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->iv(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_1
    const-string v1, "KEYFORMAT"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KEYFORMAT"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->keyFormat(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_2
    const-string v1, "KEYFORMATVERSIONS"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KEYFORMATVERSIONS"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->keyFormatVersions(Ljava/lang/String;)Lio/lindstrom/m3u8/model/SegmentKey$Builder;

    :cond_3
    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/SegmentKey$Builder;->build()Lio/lindstrom/m3u8/model/SegmentKey;

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

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/SegmentKeyParser;->parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/SegmentKey;

    move-result-object p1

    return-object p1
.end method

.method writeAttributes(Lio/lindstrom/m3u8/model/SegmentKey;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;-><init>()V

    const-string v1, "METHOD"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->method()Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/Enum;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->uri()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$i5Ht0BhRBepmwYh6rN1aaIIsUFc;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$i5Ht0BhRBepmwYh6rN1aaIIsUFc;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->iv()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$H083c6NJPQDFGiIOiYo6PaNLQrU;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$H083c6NJPQDFGiIOiYo6PaNLQrU;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->keyFormat()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$Wn-MIoeXWScZtH6QyzdLULUAaX0;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$Wn-MIoeXWScZtH6QyzdLULUAaX0;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/SegmentKey;->keyFormatVersions()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$Ry0B3ECLlwUy4yQxvnIIujgOyL0;

    invoke-direct {v1, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$SegmentKeyParser$Ry0B3ECLlwUy4yQxvnIIujgOyL0;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic writeAttributes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/SegmentKey;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/SegmentKeyParser;->writeAttributes(Lio/lindstrom/m3u8/model/SegmentKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
