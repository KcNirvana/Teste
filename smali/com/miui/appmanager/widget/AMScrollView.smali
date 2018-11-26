.class public Lcom/miui/appmanager/widget/AMScrollView;
.super Landroid/widget/ScrollView;
.source ""


# instance fields
.field private aRJ:Lcom/miui/appmanager/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public biv(Lcom/miui/appmanager/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/widget/AMScrollView;->aRJ:Lcom/miui/appmanager/widget/e;

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMScrollView;->aRJ:Lcom/miui/appmanager/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AMScrollView;->aRJ:Lcom/miui/appmanager/widget/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/appmanager/widget/e;->biw(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
