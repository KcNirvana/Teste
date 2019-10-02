.class Lcom/miui/video/biz/history/VideoHistoryActivity$1;
.super Ljava/lang/Object;
.source "VideoHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/history/VideoHistoryActivity;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/history/VideoHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$1;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/history/VideoHistoryActivity$1;->this$0:Lcom/miui/video/biz/history/VideoHistoryActivity;

    invoke-static {p1}, Lcom/miui/video/biz/history/VideoHistoryActivity;->access$000(Lcom/miui/video/biz/history/VideoHistoryActivity;)Lcom/miui/video/service/fragment/VideoListFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/service/fragment/VideoListFragment;->onTitleBarClick(Z)V

    return-void
.end method
