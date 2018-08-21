.class public abstract Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;
.super Ljava/lang/Object;
.source "BaseBallScoreResponse.java"


# instance fields
.field private base64Encode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64Encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->base64Encode:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLeagueName()Ljava/lang/String;
.end method

.method public abstract getLeagueShortName()Ljava/lang/String;
.end method

.method public abstract getScoreList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/miui/home/launcher/assistant/module/model/BaseBallScore;",
            ">;"
        }
    .end annotation
.end method

.method public setBase64Encode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;->base64Encode:Ljava/lang/String;

    return-void
.end method
