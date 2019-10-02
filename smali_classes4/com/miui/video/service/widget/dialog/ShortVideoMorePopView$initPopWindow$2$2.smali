.class final Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;
.super Ljava/lang/Object;
.source "ShortVideoMorePopView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->onClick(Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;

    iget-object p1, p1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    iget-object v0, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;

    iget-object v0, v0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-static {v0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->access$getMBaseUIEntity$p(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-static {p1, v0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->access$doReport(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;

    iget-object p1, p1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-virtual {p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/widget/dialog/ReportDialog;->dismiss(Landroid/content/Context;)Z

    return-void
.end method
