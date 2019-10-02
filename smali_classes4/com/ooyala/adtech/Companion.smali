.class public Lcom/ooyala/adtech/Companion;
.super Lcom/ooyala/adtech/Creative;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Resource;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ooyala/adtech/Creative;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Companion;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Companion;->d:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Companion;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Resource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Companion;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Companion;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ooyala/adtech/Companion;->c:I

    return v0
.end method

.method public getZoneIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Companion;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected setCustomIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Companion;->b:Ljava/lang/String;

    return-void
.end method

.method protected setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/adtech/Companion;->d:I

    return-void
.end method

.method protected setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Companion;->a:Ljava/lang/String;

    return-void
.end method

.method protected setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Resource;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/adtech/Companion;->e:Ljava/util/List;

    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/adtech/Companion;->c:I

    return-void
.end method

.method protected setZoneIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Companion;->f:Ljava/lang/String;

    return-void
.end method
