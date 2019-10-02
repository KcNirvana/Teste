.class final Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;
.super Ljava/lang/Object;
.source "ShortVideoMorePopView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.field final synthetic this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-static {p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->access$dismiss(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)V

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-virtual {p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-virtual {p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/miui/video/service/R$string;->report:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;->this$0:Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;

    invoke-static {p1}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;->access$getMBaseUIEntity$p(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    sget v3, Lcom/miui/video/service/R$string;->cancel:I

    sget v4, Lcom/miui/video/service/R$string;->report:I

    new-instance p1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$1;

    invoke-direct {p1, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$1;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;)V

    move-object v5, p1

    check-cast v5, Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;

    invoke-direct {p1, p0}, Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2$2;-><init>(Lcom/miui/video/service/widget/dialog/ShortVideoMorePopView$initPopWindow$2;)V

    move-object v6, p1

    check-cast v6, Landroid/view/View$OnClickListener;

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/miui/video/base/widget/dialog/ReportDialog;->showReportDialog(Landroid/content/Context;Ljava/lang/String;Lcom/miui/video/framework/base/ui/BaseUIEntity;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method
