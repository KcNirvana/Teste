.class final Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$1;
.super Ljava/lang/Object;
.source "ShortVideoMorePopView.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->initPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onDismiss"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$1;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$1;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->access$bgAlpha(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;F)V

    return-void
.end method
