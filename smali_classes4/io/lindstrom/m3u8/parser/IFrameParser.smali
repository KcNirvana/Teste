.class Lio/lindstrom/m3u8/parser/IFrameParser;
.super Lio/lindstrom/m3u8/parser/AbstractLineParser;
.source "IFrameParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractLineParser<",
        "Lio/lindstrom/m3u8/model/IFrameVariant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-direct {p0, v0}, Lio/lindstrom/m3u8/parser/AbstractLineParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$0(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$1(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Lio/lindstrom/m3u8/model/Resolution;)V
    .locals 1

    const-string v0, "RESOLUTION"

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/VariantParser;->writeResolution(Lio/lindstrom/m3u8/model/Resolution;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$2(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HDCP-LEVEL"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$3(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "VIDEO"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$4(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "PROGRAM-ID"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/IFrameVariant;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/IFrameVariant;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-static {}, Lio/lindstrom/m3u8/model/IFrameVariant$-CC;->builder()Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "CODECS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "BANDWIDTH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "HDCP-LEVEL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v4, "PROGRAM-ID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string v4, "VIDEO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "URI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_6
    const-string v4, "AVERAGE-BANDWIDTH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v4, "RESOLUTION"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance p1, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->programId(I)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->video(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->hdcpLevel(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v1}, Lio/lindstrom/m3u8/parser/VariantParser;->parseResolution(Ljava/lang/String;)Lio/lindstrom/m3u8/model/Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->resolution(Lio/lindstrom/m3u8/model/Resolution;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_4
    const-string v2, ","

    invoke-static {v1, v2}, Lio/lindstrom/m3u8/parser/ParserUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->codecs(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->averageBandwidth(J)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->bandwidth(J)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/IFrameVariant$Builder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/IFrameVariant$Builder;->build()Lio/lindstrom/m3u8/model/IFrameVariant;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x42749b54 -> :sswitch_7
        -0x37ac7b3f -> :sswitch_6
        0x1494c -> :sswitch_5
        0x4de1c5b -> :sswitch_4
        0x1edb3d24 -> :sswitch_3
        0x1fd04700 -> :sswitch_2
        0x30ecd091 -> :sswitch_1
        0x76cde71d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method bridge synthetic parseAttributes(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/IFrameParser;->parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/IFrameVariant;

    move-result-object p1

    return-object p1
.end method

.method writeAttributes(Lio/lindstrom/m3u8/model/IFrameVariant;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;-><init>()V

    const-string v1, "URI"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->uri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "BANDWIDTH"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->bandwidth()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->averageBandwidth()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$dZwtrf85KRrGgrY3sm_sIloKX0o;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$dZwtrf85KRrGgrY3sm_sIloKX0o;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->codecs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CODECS"

    const-string v2, ","

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->codecs()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->resolution()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$Z_1HTeD4phtPbCY-369jS187-B0;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$Z_1HTeD4phtPbCY-369jS187-B0;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->hdcpLevel()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$EUDBWrsPE0zUtjemybw1XN2lCTU;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$EUDBWrsPE0zUtjemybw1XN2lCTU;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->video()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$xDZeQ1eOpksVSyPAceIxdWEaz7U;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$xDZeQ1eOpksVSyPAceIxdWEaz7U;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/IFrameVariant;->programId()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$vBqQzXckPlsdDkc-JqxbVdXUKmM;

    invoke-direct {v1, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$vBqQzXckPlsdDkc-JqxbVdXUKmM;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic writeAttributes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/IFrameVariant;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/IFrameParser;->writeAttributes(Lio/lindstrom/m3u8/model/IFrameVariant;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
