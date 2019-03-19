.class Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get6(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get3(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get1(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v0, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-set0(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v0, v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v1, v1, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get3(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1$1;->this$1:Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    iget-object v2, v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->-get2(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    goto :goto_0
.end method
