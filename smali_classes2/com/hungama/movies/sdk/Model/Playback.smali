.class public Lcom/hungama/movies/sdk/Model/Playback;
.super Ljava/lang/Object;
.source "Playback.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private IS_DRM:Z

.field private bbContentId:Ljava/lang/String;

.field private downloadPer:Ljava/lang/String;

.field private downloadedPath:Ljava/lang/String;

.field private encrypt:Ljava/lang/String;

.field private img_url:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hungama/movies/sdk/Utils/DownloadVariant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->bbContentId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->token:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->variants:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->img_url:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadedPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadPer:Ljava/lang/String;

    const/16 v0, 0x40

    iput v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->status:I

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->encrypt:Ljava/lang/String;

    iput-object p2, p0, Lcom/hungama/movies/sdk/Model/Playback;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBbContentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->bbContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadPer:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hungama/movies/sdk/Utils/DownloadVariant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->variants:Ljava/util/List;

    return-object v0
.end method

.method public isDrm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hungama/movies/sdk/Model/Playback;->IS_DRM:Z

    return v0
.end method

.method public setBbContentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->bbContentId:Ljava/lang/String;

    return-void
.end method

.method public setDownloadPer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadPer:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->downloadedPath:Ljava/lang/String;

    return-void
.end method

.method public setIS_DRM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->IS_DRM:Z

    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->img_url:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->status:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->title:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->url:Ljava/lang/String;

    return-void
.end method

.method public setVariants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hungama/movies/sdk/Utils/DownloadVariant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hungama/movies/sdk/Model/Playback;->variants:Ljava/util/List;

    return-void
.end method
