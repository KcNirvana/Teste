.class Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;
.super Ljava/lang/Object;
.source "GalleryFoldersFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 0

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$4;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$502(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;->access$400(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/GalleryFoldersFragment;)V

    :goto_0
    return-void
.end method
