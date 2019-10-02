.class Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->postResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

.field final synthetic val$thumbnail_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget v1, v1, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mKey:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v2, v2, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mVideoUri:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;->access$400(Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget v2, v2, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget v2, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_getthumbs_crash:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
