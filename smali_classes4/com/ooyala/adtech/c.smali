.class final Lcom/ooyala/adtech/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method private static a(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p0

    int-to-float v1, v0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/adtech/RequestSettings;Lcom/ooyala/adtech/ContentMetadata;Ljava/lang/String;)Ljava/net/URL;
    .locals 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "proxy/distributor/v2"

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "rt"

    const-string v1, "vp_3.0"

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "pf"

    const-string v1, "and_%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "core"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->isPulseIntegrationLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "pulse"

    :cond_0
    const-string v1, "cv"

    const-string v3, "and_%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    const-string p0, "2.4.17.14.0"

    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p0, "m"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p4, :cond_9

    const-string p0, "f"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    invoke-static {v0, p0, v1, v3}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string p0, "t"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    invoke-static {v0, p0, v1, v3}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "s"

    const-string v3, ","

    invoke-static {v0, v1, p0, v3}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object p0

    sget-object v1, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->UNKNOWN:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    if-eq p0, v1, :cond_4

    const-string p0, "cf"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v1

    sget-object v3, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->LONG:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    if-ne v1, v3, :cond_3

    const-string v1, "long_form"

    goto :goto_0

    :cond_3
    const-string v1, "short_form"

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    const-string p0, "ci"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cd"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getDuration()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/ooyala/adtech/c;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getProviderCodeOfContentProviderInformation()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string p0, "opc"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getProviderCodeOfContentProviderInformation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentIdentifierOfContentProviderInformation()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p0, "oec"

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getContentIdentifierOfContentProviderInformation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_9

    const-string p0, "[^A-Za-z0-9_~\\-.]"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p4}, Lcom/ooyala/adtech/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_8
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cp."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_18

    const-string p0, "vwt"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getWidth()I

    move-result p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;I)V

    const-string p0, "vht"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getHeight()I

    move-result p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;I)V

    const-string p0, "vbw"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getMaxBitRate()I

    move-result p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;I)V

    const-string p0, "tbbl"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getMaxLinearBreakDuration()I

    move-result p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;I)V

    const-string p0, "ifa"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getAdvertisingID()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appid"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getApplicationID()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appname"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getApplicationName()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appbundle"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getApplicationBundle()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appver"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getApplicationVersion()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "appstoreurl"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getStoreUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p0, p4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_2

    :cond_a
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_b

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_b

    const/4 p4, 0x1

    goto :goto_3

    :cond_b
    const/4 p4, 0x0

    :goto_3
    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v5, 0x1

    :cond_d
    if-nez v5, :cond_14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getInsertionPointFilter()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_BEFORE_CONTENT:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "p"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "m"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_f
    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_CONTENT_END:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "po"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->ON_PAUSE:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "pa"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_TIME:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/ooyala/pulse/RequestSettings$InsertionPointType;->PLAYBACK_POSITION:Lcom/ooyala/pulse/RequestSettings$InsertionPointType;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz p4, :cond_13

    :cond_12
    const-string v3, "o"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14

    const-string v3, "tt"

    const-string v4, ","

    invoke-static {v0, v3, v1, v4}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->isAssetFilteringDisabled()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "afr"

    const-string v3, "0"

    invoke-static {v0, v1, v3}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz v5, :cond_17

    if-eqz p0, :cond_16

    const-string p0, "bp"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getLinearPlaybackPositions()Ljava/util/List;

    move-result-object v1

    const-string v3, ","

    invoke-static {v0, p0, v1, v3}, Lcom/ooyala/adtech/c;->b(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_16
    if-eqz p4, :cond_17

    const-string p0, "obp"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getNonlinearPlaybackPositions()Ljava/util/List;

    move-result-object p4

    const-string v1, ","

    invoke-static {v0, p0, p4, v1}, Lcom/ooyala/adtech/c;->b(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_17
    const-string p0, "ru"

    invoke-virtual {p3}, Lcom/ooyala/adtech/RequestSettings;->getReferrerURL()Ljava/net/URL;

    move-result-object p3

    invoke-static {v0, p0, p3}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    const-string p0, "dcid"

    invoke-static {v0, p0, p2}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pid"

    invoke-static {v0, p0, p1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "tid"

    invoke-static {v0, p0, p5}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xpb"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "st"

    const-string p1, "20:1"

    invoke-static {v0, p0, p1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "rnd"

    invoke-static {}, Lcom/ooyala/adtech/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ooyala/adtech/c;->a:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;I)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri$Builder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static b(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/ooyala/adtech/c;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/ooyala/adtech/c;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
