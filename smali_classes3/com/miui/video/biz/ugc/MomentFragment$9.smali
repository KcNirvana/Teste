.class Lcom/miui/video/biz/ugc/MomentFragment$9;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->onRefreshFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$9;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$9;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1800(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/common/library/base/impl/IPresenter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->refreshData()V

    return-void
.end method
