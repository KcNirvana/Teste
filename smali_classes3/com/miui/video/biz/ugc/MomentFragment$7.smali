.class Lcom/miui/video/biz/ugc/MomentFragment$7;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/MomentFragment;->onRefreshSuccess(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$800(Lcom/miui/video/biz/ugc/MomentFragment;)I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/biz/ugc/MomentFragment;->access$900(Lcom/miui/video/biz/ugc/MomentFragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1600(Lcom/miui/video/biz/ugc/MomentFragment;I)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$7;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$1600(Lcom/miui/video/biz/ugc/MomentFragment;I)V

    :goto_0
    return-void
.end method
