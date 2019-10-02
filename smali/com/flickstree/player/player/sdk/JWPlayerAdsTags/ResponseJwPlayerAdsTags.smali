.class public Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;
.super Ljava/lang/Object;
.source "ResponseJwPlayerAdsTags.java"


# instance fields
.field private rEQUEST:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "REQUEST"
    .end annotation
.end field

.field private rESPONSE:Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;
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

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rEQUEST:Ljava/lang/String;

    return-object v0
.end method

.method public getRESPONSE()Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESPONSE:Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;

    return-object v0
.end method

.method public getRESULT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESULT:Ljava/lang/String;

    return-object v0
.end method

.method public setREQUEST(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rEQUEST:Ljava/lang/String;

    return-void
.end method

.method public setRESPONSE(Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESPONSE:Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;

    return-void
.end method

.method public setRESULT(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESULT:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseJwPlayerAdsTags{rEQUEST = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rEQUEST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",rESPONSE = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESPONSE:Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/RESPONSE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",rESULT = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/JWPlayerAdsTags/ResponseJwPlayerAdsTags;->rESULT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
