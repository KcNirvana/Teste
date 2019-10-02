.class Lcom/miui/video/biz/ugc/MomentFragment$10;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->onLoadMoreSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;

.field final synthetic val$entities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    iput-object p2, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->val$entities:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1900(Lcom/miui/video/biz/ugc/MomentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->val$entities:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$2000(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1900(Lcom/miui/video/biz/ugc/MomentFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->val$entities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/biz/ugc/MomentFragment$10;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v2}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1900(Lcom/miui/video/biz/ugc/MomentFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/ugc/card/UGCVideoAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method
