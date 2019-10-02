.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getControllerView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyMatchMusicByFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyMatchMusicByLocal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$702(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;)Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;

    move-result-object p1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager;->setOnMatchMusicListener(Lcom/miui/video/galleryplus/galleryvideo/utils/MatchMusicManager$OnMatchMusicListener;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$2;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->postAsyncTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyNoneMatchMusic(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$000(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setBtnOkEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$102(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$302(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$402(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;)V

    return-void
.end method

.method public notifySave()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->setBtnOkEnabled(Z)V

    return-void
.end method
