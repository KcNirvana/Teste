.class public final synthetic Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$bTMrD6QCMZ_EYGhA1UVpzZX1U4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IUIRecyclerCreateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$bTMrD6QCMZ_EYGhA1UVpzZX1U4Y;->f$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    return-void
.end method


# virtual methods
.method public final onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/-$$Lambda$FolderFragment$bTMrD6QCMZ_EYGhA1UVpzZX1U4Y;->f$0:Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->lambda$initViewsValue$39(Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;

    move-result-object p1

    return-object p1
.end method
