.class Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/BaseFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
