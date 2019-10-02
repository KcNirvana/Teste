.class final Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1;
.super Ljava/util/HashMap;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->cdnsEnabled:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Fastly"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "Akamai"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "cdn_custom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "Highwinds"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v4, "Level3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDN name unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    move-object v2, v4

    move-object v3, v2

    move-object v5, v3

    goto/16 :goto_4

    :pswitch_0
    new-instance v3, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v5, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderNone:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v6, ""

    const-string v7, ""

    invoke-direct {v3, v5, v6, v7}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1$1;

    invoke-direct {v3, p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1$1;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1;)V

    move-object v5, v3

    move-object v3, v4

    goto :goto_4

    :pswitch_1
    const-string v3, "FASTLY"

    new-instance v5, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v7, "X-Served-By"

    const-string v8, "([^,\\s]+)$"

    invoke-direct {v5, v6, v7, v8}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v7, "X-Cache"

    const-string v8, "([^,\\s]+)$"

    invoke-direct {v5, v6, v7, v8}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string v3, "HIGHNEGR"

    new-instance v5, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v7, "X-HW"

    const-string v8, ".+,[0-9]+\\.(.+)\\.(.+)"

    invoke-direct {v5, v6, v7, v8}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v5, v4

    goto :goto_4

    :pswitch_3
    const-string v3, "AKAMAI"

    new-instance v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v7, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderTypeAndHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v8, "X-Cache"

    const-string v9, "(.+)\\sfrom\\s.+\\(.+\\/(.+)\\).+"

    invoke-direct {v6, v7, v8, v9}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "Pragma"

    const-string v7, "akamai-x-cache-on"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_4
    const-string v3, "LEVEL3"

    new-instance v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;

    sget-object v7, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v8, "X-WR-DIAG"

    const-string v9, "Host:(.+)\\sType:(.+)"

    invoke-direct {v6, v7, v8, v9}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;-><init>(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "X-WR-DIAG"

    const-string v7, "host"

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v5, v4

    move-object v4, v6

    :goto_4
    if-eqz v2, :cond_0

    new-instance v6, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;

    invoke-direct {v6, v3, v2, v4}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    if-eqz v5, :cond_2

    invoke-virtual {v6, v5}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;->setCdnInfoListener(Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN$CDNInfoListener;)V

    :cond_2
    invoke-virtual {p0, v1, v6}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78893eb1 -> :sswitch_4
        0x4f72c8e9 -> :sswitch_3
        0x56e9ebc3 -> :sswitch_2
        0x74fc909e -> :sswitch_1
        0x7d002b09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
