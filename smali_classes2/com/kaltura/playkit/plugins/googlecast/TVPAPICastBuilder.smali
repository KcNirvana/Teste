.class public Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;
.super Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
.source "TVPAPICastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder<",
        "Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCastHelper()Lcom/kaltura/playkit/plugins/googlecast/CastConfigHelper;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastConfigHelper;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastConfigHelper;-><init>()V

    return-object v0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setFormat(Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitObject(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/TVPAPICastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setInitObject(Ljava/lang/String;)V

    return-object p0
.end method

.method protected validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getInitObject()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
