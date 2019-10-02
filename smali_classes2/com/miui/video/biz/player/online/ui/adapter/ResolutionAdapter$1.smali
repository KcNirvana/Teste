.class Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;
.super Ljava/lang/Object;
.source "ResolutionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

.field final synthetic val$item:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->val$item:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->access$000(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->access$100(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->val$item:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->this$0:Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;->access$200(Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter;)Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/adapter/ResolutionAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter$OnItemClickListener;->onItemClick(I)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onResolutionChange()V

    :cond_0
    return-void
.end method
