.class public interface abstract Lcom/miui/video/common/library/widget/scroll/indicator/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;,
        Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;,
        Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;,
        Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;,
        Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;
    }
.end annotation


# virtual methods
.method public abstract getCurrentItem()I
.end method

.method public abstract getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;
.end method

.method public abstract getItemView(I)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getOnIndicatorItemClickListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;
.end method

.method public abstract getOnItemSelectListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;
.end method

.method public abstract getOnTransitionListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;
.end method

.method public abstract getPreSelectItem()I
.end method

.method public abstract isItemClickable()Z
.end method

.method public abstract onPageScrollStateChanged(I)V
.end method

.method public abstract onPageScrolled(IFI)V
.end method

.method public abstract setAdapter(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;)V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setCurrentItem(IZ)V
.end method

.method public abstract setItemClickable(Z)V
.end method

.method public abstract setOnIndicatorItemClickListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;)V
.end method

.method public abstract setOnItemSelectListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V
.end method

.method public abstract setOnTransitionListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;)V
.end method

.method public abstract setScrollBar(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;)V
.end method
