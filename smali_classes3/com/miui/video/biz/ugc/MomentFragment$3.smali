.class Lcom/miui/video/biz/ugc/MomentFragment$3;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->switchCardAndPlay(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/LinearLayoutManager;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;

.field final synthetic val$lastPos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    iput p2, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->val$lastPos:I

    iput p3, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->val$lastPos:I

    iget v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->val$position:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1000(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1002(Lcom/miui/video/biz/ugc/MomentFragment;Z)Z

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    iget v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$3;->val$position:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/ugc/MomentFragment;->access$900(Lcom/miui/video/biz/ugc/MomentFragment;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
