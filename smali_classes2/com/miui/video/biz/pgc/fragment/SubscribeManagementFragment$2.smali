.class Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;
.super Ljava/lang/Object;
.source "SubscribeManagementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->tv_order_type:I

    invoke-static {v0, v1}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$300(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    invoke-static {v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$400(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_update:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_subscribe_order_subscribe:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment$2;->this$0:Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->access$500(Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;I)V

    :goto_0
    return-void
.end method
