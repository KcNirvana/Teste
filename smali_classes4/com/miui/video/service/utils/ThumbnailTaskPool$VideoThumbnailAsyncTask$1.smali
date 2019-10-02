.class Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->postResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

.field final synthetic val$thumbnail_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iput-object p2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$500(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->val$thumbnail_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v1, v1, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->this$0:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-static {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->access$500(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget v1, v1, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mDefaultRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask$1;->this$1:Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v1, v1, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_1
    return-void
.end method
