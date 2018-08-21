.class public final Lcom/alipay/mobile/common/cache/a;
.super Ljava/lang/Object;
.source "DiskCacheEntity.java"


# annotations
.annotation runtime Lcom/alipay/mobile/common/db/annotation/Table;
    name = "disk_cache"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "etag"
    .end annotation
.end field

.field private expires:J
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "expires"
    .end annotation
.end field

.field private hits:J
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "hits"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "key"
        property = "UNIQUE"
    .end annotation
.end field

.field private lastAccess:J
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "lastAccess"
    .end annotation
.end field

.field private lastModify:Ljava/util/Date;
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "lastModify"
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "path"
    .end annotation
.end field

.field private textContent:Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/common/db/annotation/Column;
        name = "textContent"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->expires:J

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/a;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->expires:J

    return-wide v0
.end method

.method public getHits()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->hits:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/a;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccess()J
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->lastAccess:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/a;->lastAccess:J

    goto :goto_0
.end method

.method public getLastModify()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/a;->lastModify:Ljava/util/Date;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/a;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/cache/a;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/a;->etag:Ljava/lang/String;

    return-void
.end method

.method public setExpires(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/a;->expires:J

    return-void
.end method

.method public setHits(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/a;->hits:J

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/a;->id:J

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/a;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastAccess(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/a;->lastAccess:J

    return-void
.end method

.method public setLastModify(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/a;->lastModify:Ljava/util/Date;

    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/a;->path:Ljava/lang/String;

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/cache/a;->textContent:Ljava/lang/String;

    return-void
.end method
