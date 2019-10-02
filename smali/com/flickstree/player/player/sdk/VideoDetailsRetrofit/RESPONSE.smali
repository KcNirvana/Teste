.class public Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;
.super Ljava/lang/Object;
.source "RESPONSE.java"


# instance fields
.field private apiMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_method"
    .end annotation
.end field

.field private category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private comments:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comments"
    .end annotation
.end field

.field private dislikes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dislikes"
    .end annotation
.end field

.field private language:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private length:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private likes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likes"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private poster:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster"
    .end annotation
.end field

.field private posters:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posters"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srctype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "srctype"
    .end annotation
.end field

.field private uniqId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uniq_id"
    .end annotation
.end field

.field private views:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "views"
    .end annotation
.end field

.field private watchUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "watch_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->apiMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getDislikes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->dislikes:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->language:Ljava/util/List;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getLikes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->likes:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPoster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->poster:Ljava/lang/String;

    return-object v0
.end method

.method public getPosters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->posters:Ljava/util/List;

    return-object v0
.end method

.method public getSrctype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->srctype:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->uniqId:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->views:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->watchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setApiMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->apiMethod:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->category:Ljava/lang/String;

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->comments:Ljava/lang/String;

    return-void
.end method

.method public setDislikes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->dislikes:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->language:Ljava/util/List;

    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->length:Ljava/lang/String;

    return-void
.end method

.method public setLikes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->likes:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->name:Ljava/lang/String;

    return-void
.end method

.method public setPoster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->poster:Ljava/lang/String;

    return-void
.end method

.method public setPosters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->posters:Ljava/util/List;

    return-void
.end method

.method public setSrctype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->srctype:Ljava/lang/String;

    return-void
.end method

.method public setUniqId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->uniqId:Ljava/lang/String;

    return-void
.end method

.method public setViews(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->views:Ljava/lang/String;

    return-void
.end method

.method public setWatchUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->watchUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESPONSE{srctype = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->srctype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",comments = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->comments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",length = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->length:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",posters = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->posters:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",language = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->language:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",dislikes = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->dislikes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",uniq_id = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->uniqId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",api_method = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->apiMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",watch_url = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->watchUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",name = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",category = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",poster = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->poster:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",views = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->views:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",likes = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flickstree/player/player/sdk/VideoDetailsRetrofit/RESPONSE;->likes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
