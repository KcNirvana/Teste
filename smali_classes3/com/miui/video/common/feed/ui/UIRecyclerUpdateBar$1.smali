.class Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar$1;
.super Ljava/lang/Object;
.source "UIRecyclerUpdateBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar$1;->this$0:Lcom/miui/video/common/feed/ui/UIRecyclerUpdateBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/common/feed/R$string;->need_update_app:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method
