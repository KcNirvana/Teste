.class Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyOnItemSelectListener"
.end annotation


# instance fields
.field private onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

.field final synthetic this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;


# direct methods
.method private constructor <init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)V

    return-void
.end method


# virtual methods
.method public getOnItemSelectedListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    return-object v0
.end method

.method public onItemSelected(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$100(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->this$0:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;

    invoke-static {v0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->access$200(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->onItemSelectedListener:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    return-void
.end method
