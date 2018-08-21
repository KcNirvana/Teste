.class public Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
.super Lcom/miui/personalassistant/favorite/module/FavBase;
.source "FavoriteRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private categories:[Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private ctime:Ljava/lang/String;

.field private dateStr:Ljava/lang/String;

.field private favourite:I

.field private isPartner:Ljava/lang/String;

.field private isStyleActivity:Z

.field private mark:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private ptime:Ljava/lang/String;

.field private readed:I

.field private source:Ljava/lang/String;

.field private sourceIcon:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tags:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/module/FavBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->categories:[Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->dateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFavourite()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->favourite:I

    return v0
.end method

.method public getIsPartner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->isPartner:Ljava/lang/String;

    return-object v0
.end method

.method public getMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->mark:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->ptime:Ljava/lang/String;

    return-object v0
.end method

.method public getReaded()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->readed:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->sourceIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->isStyleActivity:Z

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->author:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->body:Ljava/lang/String;

    return-void
.end method

.method public setCategories([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->categories:[Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->category:Ljava/lang/String;

    return-void
.end method

.method public setCtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->ctime:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->dateStr:Ljava/lang/String;

    return-void
.end method

.method public setFavourite(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->favourite:I

    return-void
.end method

.method public setIsPartner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->isPartner:Ljava/lang/String;

    return-void
.end method

.method public setMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->mark:Ljava/lang/String;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public setPtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->ptime:Ljava/lang/String;

    return-void
.end method

.method public setReaded(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->readed:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->source:Ljava/lang/String;

    return-void
.end method

.method public setSourceIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->sourceIcon:Ljava/lang/String;

    return-void
.end method

.method public setStyleActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->isStyleActivity:Z

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->tags:[Ljava/lang/String;

    return-void
.end method
