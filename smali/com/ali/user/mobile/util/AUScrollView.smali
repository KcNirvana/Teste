.class public Lcom/ali/user/mobile/util/AUScrollView;
.super Landroid/widget/ScrollView;
.source "AUScrollView.java"


# instance fields
.field private a:Lcom/ali/user/mobile/util/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/util/AUScrollView;->postInvalidate()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setScrollViewListener(Lcom/ali/user/mobile/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/util/AUScrollView;->a:Lcom/ali/user/mobile/util/a;

    return-void
.end method
