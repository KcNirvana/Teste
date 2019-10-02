.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$4;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
