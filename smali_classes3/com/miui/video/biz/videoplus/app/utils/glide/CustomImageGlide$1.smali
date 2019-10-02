.class final Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;
.super Ljava/lang/Object;
.source "CustomImageGlide.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageHeight:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$imageWidth:I

.field final synthetic val$listener:Lcom/bumptech/glide/request/RequestListener;

.field final synthetic val$placeHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;IILjava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageWidth:I

    iput p3, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageHeight:I

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$placeHolder:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$listener:Lcom/bumptech/glide/request/RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageWidth:I

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageHeight:I

    if-le v1, v2, :cond_0

    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-double v4, v1

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double/2addr v4, v6

    double-to-int v1, v4

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    if-gtz v1, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/bumptech/glide/RequestBuilder;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    :cond_4
    invoke-virtual {v2}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$placeHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;-><init>(Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;)V

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
