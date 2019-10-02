.class final Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;
.super Ljava/lang/Object;
.source "UICardVideoDetail.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->initViewsEvent()V
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
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$getMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Z

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$getVArrow$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/miui/video/common/library/utils/AnimUtils;->RotateAnimation(Landroid/view/View;FF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$getVArrow$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/miui/video/common/library/utils/AnimUtils;->RotateAnimation(Landroid/view/View;FF)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$getMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$setMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;Z)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;->this$0:Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;

    invoke-static {v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$getMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->access$showDetail(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;Z)V

    return-void
.end method
