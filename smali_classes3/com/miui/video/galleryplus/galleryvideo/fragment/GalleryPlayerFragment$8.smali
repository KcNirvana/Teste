.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Lcom/miui/video/base/common/net/model/ModelData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelData;->getCard_list()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/CardListEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardListEntity;->getRow_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public returnFail(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " returnFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V

    return-void
.end method

.method public returnSuccess()V
    .locals 3

    const-string v0, "GalleryPlayerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " returnSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;ZZ)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$2500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$8;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V

    :goto_0
    return-void
.end method
