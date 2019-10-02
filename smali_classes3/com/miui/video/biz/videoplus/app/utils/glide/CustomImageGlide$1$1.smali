.class Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;
.super Ljava/lang/Object;
.source "CustomImageGlide.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;

    iget-object p2, p2, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$listener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;

    iget-object p2, p2, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$listener:Lcom/bumptech/glide/request/RequestListener;

    const-string p3, ""

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0, p4}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;

    iget-object p2, p2, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$listener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->this$0:Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;

    iget-object v0, p2, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1;->val$listener:Lcom/bumptech/glide/request/RequestListener;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide$1$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
