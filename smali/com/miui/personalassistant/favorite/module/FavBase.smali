.class public Lcom/miui/personalassistant/favorite/module/FavBase;
.super Ljava/lang/Object;
.source "FavBase.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appName:Ljava/lang/String;

.field private cdelete:I

.field private cdirty:I

.field private cid:Ljava/lang/String;

.field private componentName:Ljava/lang/String;

.field private ctag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private intentAction:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private originalUri:Ljava/lang/String;

.field private thumbnails:[Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/miui/personalassistant/favorite/module/FavBase;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/favorite/module/FavBase;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->url:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavBase;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdelete()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cdelete:I

    return v0
.end method

.method public getCdirty()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cdirty:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->ctag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->intentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->originalUri:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->thumbnails:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCdelete(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cdelete:I

    return-void
.end method

.method public setCdirty(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cdirty:I

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->cid:Ljava/lang/String;

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->componentName:Ljava/lang/String;

    return-void
.end method

.method public setCtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->ctag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->id:Ljava/lang/String;

    return-void
.end method

.method public setIntentAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->intentAction:Ljava/lang/String;

    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->originUrl:Ljava/lang/String;

    return-void
.end method

.method public setOriginalUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->originalUri:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->thumbnails:[Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/module/FavBase;->url:Ljava/lang/String;

    return-void
.end method
