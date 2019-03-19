.class Lcom/android/camera/fragment/top/FragmentTopAlert$2;
.super Ljava/lang/Object;
.source "FragmentTopAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get1(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get3(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get0(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get2(Lcom/android/camera/fragment/top/FragmentTopAlert;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-wrap3(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get4(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get0(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ToggleSwitch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get0(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-wrap1(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-wrap3(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$2;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->-get2(Lcom/android/camera/fragment/top/FragmentTopAlert;)I

    move-result v0

    goto :goto_0
.end method
