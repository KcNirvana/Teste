.class public Lcom/kaltura/playkit/plugins/googlecast/OVPCastBuilder;
.super Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;
.source "OVPCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder<",
        "Lcom/kaltura/playkit/plugins/googlecast/OVPCastBuilder;",
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

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/OVPCastConfigHelper;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/googlecast/OVPCastConfigHelper;-><init>()V

    return-object v0
.end method

.method public setKs(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/OVPCastBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/googlecast/OVPCastBuilder;->castInfo:Lcom/kaltura/playkit/plugins/googlecast/CastInfo;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->setKs(Ljava/lang/String;)V

    return-object p0
.end method

.method protected validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/kaltura/playkit/plugins/googlecast/BasicCastBuilder;->validate(Lcom/kaltura/playkit/plugins/googlecast/CastInfo;)V

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/googlecast/CastInfo;->getKs()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
