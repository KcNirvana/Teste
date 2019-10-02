.class public Lcom/miui/video/common/library/widget/glide/ImgEntity;
.super Ljava/lang/Object;
.source "ImgEntity.java"


# instance fields
.field private bgRes:I

.field private gifListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isGif:Z

.field private listener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadFailRes:I

.field private loadingRes:I

.field private transformation:Lcom/bumptech/glide/load/Transformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/video/common/library/R$drawable;->gray_default:I

    iput v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->loadFailRes:I

    return-void
.end method


# virtual methods
.method public getBgRes()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->bgRes:I

    return v0
.end method

.method public getGifListener()Lcom/bumptech/glide/request/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->gifListener:Lcom/bumptech/glide/request/RequestListener;

    return-object v0
.end method

.method public getListener()Lcom/bumptech/glide/request/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->listener:Lcom/bumptech/glide/request/RequestListener;

    return-object v0
.end method

.method public getLoadFailRes()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->loadFailRes:I

    return v0
.end method

.method public getLoadingRes()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->loadingRes:I

    return v0
.end method

.method public getTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->transformation:Lcom/bumptech/glide/load/Transformation;

    return-object v0
.end method

.method public isGif()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->isGif:Z

    return v0
.end method

.method public setBgRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->bgRes:I

    return-void
.end method

.method public setGif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->isGif:Z

    return-void
.end method

.method public setGifListener(Lcom/bumptech/glide/request/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->gifListener:Lcom/bumptech/glide/request/RequestListener;

    return-void
.end method

.method public setListener(Lcom/bumptech/glide/request/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->listener:Lcom/bumptech/glide/request/RequestListener;

    return-void
.end method

.method public setLoadFailRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->loadFailRes:I

    return-void
.end method

.method public setLoadingRes(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->loadingRes:I

    return-void
.end method

.method public setTransformation(Lcom/bumptech/glide/load/Transformation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/glide/ImgEntity;->transformation:Lcom/bumptech/glide/load/Transformation;

    return-void
.end method
