.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;
.super Ljava/lang/Object;
.source "ResolverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

.field public mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)V

    return-void
.end method


# virtual methods
.method public needRefresh(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;->onIntentSelected(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
