.class Lcom/miui/video/service/share/LineIndicator$1;
.super Ljava/lang/Object;
.source "LineIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/share/LineIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/share/LineIndicator;


# direct methods
.method constructor <init>(Lcom/miui/video/service/share/LineIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/LineIndicator$1;->this$0:Lcom/miui/video/service/share/LineIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/share/LineIndicator$1;->this$0:Lcom/miui/video/service/share/LineIndicator;

    int-to-float p3, p3

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator$1;->this$0:Lcom/miui/video/service/share/LineIndicator;

    invoke-static {v0}, Lcom/miui/video/service/share/LineIndicator;->access$000(Lcom/miui/video/service/share/LineIndicator;)F

    move-result v0

    mul-float p3, p3, v0

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator$1;->this$0:Lcom/miui/video/service/share/LineIndicator;

    invoke-static {v0}, Lcom/miui/video/service/share/LineIndicator;->access$100(Lcom/miui/video/service/share/LineIndicator;)I

    move-result v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator$1;->this$0:Lcom/miui/video/service/share/LineIndicator;

    invoke-static {v0}, Lcom/miui/video/service/share/LineIndicator;->access$000(Lcom/miui/video/service/share/LineIndicator;)F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p2, p1}, Lcom/miui/video/service/share/LineIndicator;->smoothScrollTo(I)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
