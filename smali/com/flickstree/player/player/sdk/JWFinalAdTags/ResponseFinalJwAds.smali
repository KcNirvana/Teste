.class public Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;
.super Ljava/lang/Object;
.source "ResponseFinalJwAds.java"


# instance fields
.field private rEQUEST:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REQUEST"
    .end annotation
.end field

.field private rESPONSE:Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RESPONSE"
    .end annotation
.end field

.field private rESULT:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RESULT"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getREQUEST()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rEQUEST:Ljava/lang/String;

    return-object v0
.end method

.method public getRESPONSE()Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESPONSE:Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;

    return-object v0
.end method

.method public getRESULT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESULT:Ljava/lang/String;

    return-object v0
.end method

.method public setREQUEST(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rEQUEST:Ljava/lang/String;

    return-void
.end method

.method public setRESPONSE(Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESPONSE:Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;

    return-void
.end method

.method public setRESULT(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESULT:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseFinalJwAds{rEQUEST = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rEQUEST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",rESPONSE = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESPONSE:Lcom/flickstree/player/player/sdk/JWFinalAdTags/RESPONSE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",rESULT = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/JWFinalAdTags/ResponseFinalJwAds;->rESULT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
