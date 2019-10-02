.class Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;
.super Lio/lindstrom/m3u8/parser/AbstractLineParser;
.source "AlternativeRenditionParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/lindstrom/m3u8/parser/AbstractLineParser<",
        "Lio/lindstrom/m3u8/model/AlternativeRendition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "#EXT-X-MEDIA"

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

    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$2(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ASSOC-LANGUAGE"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$3(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "DEFAULT"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$4(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "AUTOSELECT"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$5(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "FORCED"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$writeAttributes$6(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "INSTREAM-ID"

    invoke-virtual {p0, v0, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static yesOrNo(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x9c1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x156c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "YES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lio/lindstrom/m3u8/parser/PlaylistParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected YES or NO, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/lindstrom/m3u8/parser/PlaylistParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/AlternativeRendition;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/lindstrom/m3u8/model/AlternativeRendition;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-static {}, Lio/lindstrom/m3u8/model/AlternativeRendition$-CC;->builder()Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

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

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "FORCED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "INSTREAM-ID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "GROUP-ID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "AUTOSELECT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_4
    const-string v4, "TYPE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v4, "NAME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "URI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "ASSOC-LANGUAGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_8
    const-string v4, "CHARACTERISTICS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_9
    const-string v4, "LANGUAGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_a
    const-string v4, "DEFAULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_b
    const-string v4, "CHANNELS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

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
    const-string v2, "/"

    invoke-static {v1, v2}, Lio/lindstrom/m3u8/parser/ParserUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->channels(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_1
    const-string v2, ","

    invoke-static {v1, v2}, Lio/lindstrom/m3u8/parser/ParserUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->characteristics(Ljava/lang/Iterable;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->inStreamId(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->yesOrNo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->forced(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->yesOrNo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->autoSelect(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->yesOrNo(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->defaultRendition(Z)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->name(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->assocLanguage(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->language(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->groupId(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->uri(Ljava/lang/String;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v1}, Lio/lindstrom/m3u8/model/MediaType;->parse(Ljava/lang/String;)Lio/lindstrom/m3u8/model/MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->type(Lio/lindstrom/m3u8/model/MediaType;)Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lio/lindstrom/m3u8/model/AlternativeRendition$Builder;->build()Lio/lindstrom/m3u8/model/AlternativeRendition;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7bf5ec30 -> :sswitch_b
        -0x79209ddf -> :sswitch_a
        -0x31877ca8 -> :sswitch_9
        -0x188db1e8 -> :sswitch_8
        -0x135049d0 -> :sswitch_7
        0x1494c -> :sswitch_6
        0x24728b -> :sswitch_5
        0x27873a -> :sswitch_4
        0x3bdfbf6b -> :sswitch_3
        0x4cd42349 -> :sswitch_2
        0x76df2f03 -> :sswitch_1
        0x7bf2c6d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method bridge synthetic parseAttributes(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/lindstrom/m3u8/parser/PlaylistParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->parseAttributes(Ljava/util/Map;)Lio/lindstrom/m3u8/model/AlternativeRendition;

    move-result-object p1

    return-object p1
.end method

.method writeAttributes(Lio/lindstrom/m3u8/model/AlternativeRendition;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;-><init>()V

    const-string v1, "TYPE"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->type()Lio/lindstrom/m3u8/model/MediaType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->add(Ljava/lang/String;Ljava/lang/Enum;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->uri()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$NgHRdz4YgmMPPEYhwjqxOv-I3Kc;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$NgHRdz4YgmMPPEYhwjqxOv-I3Kc;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "GROUP-ID"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->groupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->language()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$L-DJ7NAsZVzuS7dz-Z3lQUVGOGY;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$L-DJ7NAsZVzuS7dz-Z3lQUVGOGY;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->assocLanguage()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$JZAFvZx0C5FTFdlHKVhBrS_Q1AM;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$JZAFvZx0C5FTFdlHKVhBrS_Q1AM;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "NAME"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->defaultRendition()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$VE6wJAH3Xhc-b9iJjz1zJiY5yJI;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$VE6wJAH3Xhc-b9iJjz1zJiY5yJI;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->autoSelect()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$ZkMED3gZ99-PkyVkndUX98i0D2o;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$ZkMED3gZ99-PkyVkndUX98i0D2o;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->forced()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$bUGtrB5QoaCEKUrRcEI4qyG_Ic0;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$bUGtrB5QoaCEKUrRcEI4qyG_Ic0;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->inStreamId()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$1x44P5PS_t9EEt8K_7vk6gbcMd0;

    invoke-direct {v2, v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$AlternativeRenditionParser$1x44P5PS_t9EEt8K_7vk6gbcMd0;-><init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->characteristics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHARACTERISTICS"

    const-string v2, ","

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->characteristics()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->channels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHANNELS"

    const-string v2, "/"

    invoke-interface {p1}, Lio/lindstrom/m3u8/model/AlternativeRendition;->channels()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->addQuoted(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lio/lindstrom/m3u8/parser/AttributeListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic writeAttributes(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lio/lindstrom/m3u8/model/AlternativeRendition;

    invoke-virtual {p0, p1}, Lio/lindstrom/m3u8/parser/AlternativeRenditionParser;->writeAttributes(Lio/lindstrom/m3u8/model/AlternativeRendition;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
