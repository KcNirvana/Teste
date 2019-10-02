.class public Lcom/ooyala/pulse/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/MediaFile$DeliveryMethod;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/net/URI;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAPIFramework()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/MediaFile;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getBitRate()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/MediaFile;->d:I

    return v0
.end method

.method public getDeliveryMethod()Lcom/ooyala/pulse/MediaFile$DeliveryMethod;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/MediaFile;->a:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/MediaFile;->c:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/MediaFile;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/MediaFile;->f:Ljava/net/URI;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/MediaFile;->b:I

    return v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/MediaFile;->g:Ljava/lang/String;

    return-void
.end method

.method public setBitRate(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/MediaFile;->d:I

    return-void
.end method

.method public setDeliveryMethod(Lcom/ooyala/pulse/MediaFile$DeliveryMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/MediaFile;->a:Lcom/ooyala/pulse/MediaFile$DeliveryMethod;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/MediaFile;->c:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/MediaFile;->e:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/MediaFile;->f:Ljava/net/URI;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/MediaFile;->b:I

    return-void
.end method
