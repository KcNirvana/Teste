.class public Lcom/miui/weather2/view/EnableListenScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/EnableListenScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/weather2/view/EnableListenScrollView$a;


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
.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/EnableListenScrollView;->a:Lcom/miui/weather2/view/EnableListenScrollView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/EnableListenScrollView;->a:Lcom/miui/weather2/view/EnableListenScrollView$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/weather2/view/EnableListenScrollView$a;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/miui/weather2/view/EnableListenScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/EnableListenScrollView;->a:Lcom/miui/weather2/view/EnableListenScrollView$a;

    return-void
.end method
