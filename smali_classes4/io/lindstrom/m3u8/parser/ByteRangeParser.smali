.class Lio/lindstrom/m3u8/parser/ByteRangeParser;
.super Lio/lindstrom/m3u8/parser/AbstractLineParser;
.source "ByteRangeParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractLineParser<",
        "Lio/lindstrom/m3u8/model/ByteRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final BYTE_RANGE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:@(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/lindstrom/m3u8/parser/ByteRangeParser;->BYTE_RANGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "#EXT-X-BYTERANGE"

    invoke-direct {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractLineParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$0(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    sget-object v0, Lio/lindstrom/m3u8/parser/ByteRangeParser;->BYTE_RANGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/lindstrom/m3u8/model/ByteRange$-CC;->builder()Lio/lindstrom/m3u8/model/ByteRange$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->length(J)Lio/lindstrom/m3u8/model/ByteRange$Builder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->offset(J)Lio/lindstrom/m3u8/model/ByteRange$Builder;

    :cond_0
    invoke-virtual {p1}, Lio/lindstrom/m3u8/model/ByteRange$Builder;->build()Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p1

    return-object p1
.end method

.method parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/ByteRange;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/ByteRange;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method bridge synthetic parseAttributes(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/ByteRange;

    move-result-object p1

    return-object p1
.end method

.method writeAttributes(Lio/lindstrom/m3u8/model/ByteRange;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/ByteRange;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/ByteRange;->offset()Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;->INSTANCE:Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic writeAttributes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->writeAttributes(Lio/lindstrom/m3u8/model/ByteRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
