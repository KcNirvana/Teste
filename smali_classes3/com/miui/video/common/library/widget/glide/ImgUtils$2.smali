.class final Lcom/miui/video/common/library/widget/glide/ImgUtils$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ImgUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/library/widget/glide/ImgUtils;->getBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/glide/ImgUtils$2;->val$callback:Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/common/library/widget/glide/ImgUtils$2;->val$callback:Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;

    invoke-interface {p2, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils$GlideLoadBitmapCallback;->getBitmapCallback(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
