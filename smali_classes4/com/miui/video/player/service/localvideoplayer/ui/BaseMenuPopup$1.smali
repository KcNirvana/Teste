.class Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;
.super Ljava/lang/Object;
.source "BaseMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->dismiss()V

    :cond_0
    return-void
.end method
