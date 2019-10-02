.class Lcom/miui/video/global/fragment/PersonalFragment$4;
.super Ljava/lang/Object;
.source "PersonalFragment.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/global/fragment/PersonalFragment;->gotoLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/global/fragment/PersonalFragment;

.field final synthetic val$isToSubscribe:Z


# direct methods
.method constructor <init>(Lcom/miui/video/global/fragment/PersonalFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    iput-boolean p2, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->val$isToSubscribe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {p1}, Lcom/miui/video/global/fragment/PersonalFragment;->access$000(Lcom/miui/video/global/fragment/PersonalFragment;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->access$000(Lcom/miui/video/global/fragment/PersonalFragment;)V

    iget-boolean v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->val$isToSubscribe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/fragment/PersonalFragment$4;->this$0:Lcom/miui/video/global/fragment/PersonalFragment;

    invoke-static {v0}, Lcom/miui/video/global/fragment/PersonalFragment;->access$400(Lcom/miui/video/global/fragment/PersonalFragment;)Lcom/miui/video/global/view/PersonalItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/global/view/PersonalItemView;->onClickListener()V

    :cond_0
    return-void
.end method
