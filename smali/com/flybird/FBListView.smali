.class public Lcom/flybird/FBListView;
.super Landroid/widget/ListView;
.source "FBListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBListView$FBListViewListener;
    }
.end annotation


# static fields
.field private static OVERSCROLL_THRESHOLD:I


# instance fields
.field private listener:Lcom/flybird/FBListView$FBListViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/flybird/FBListView;->OVERSCROLL_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/flybird/FBListView;->OVERSCROLL_THRESHOLD:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/flybird/FBListView;->OVERSCROLL_THRESHOLD:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2

    invoke-super/range {p0 .. p9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBListView;->listener:Lcom/flybird/FBListView$FBListViewListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget v1, Lcom/flybird/FBListView;->OVERSCROLL_THRESHOLD:I

    neg-int v1, v1

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lcom/flybird/FBListView;->listener:Lcom/flybird/FBListView$FBListViewListener;

    invoke-interface {v1, p0}, Lcom/flybird/FBListView$FBListViewListener;->onHeaderPullOver(Lcom/flybird/FBListView;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/flybird/FBListView;->OVERSCROLL_THRESHOLD:I

    if-le p2, v1, :cond_0

    iget-object v1, p0, Lcom/flybird/FBListView;->listener:Lcom/flybird/FBListView$FBListViewListener;

    invoke-interface {v1, p0}, Lcom/flybird/FBListView$FBListViewListener;->onFooterPullOver(Lcom/flybird/FBListView;)V

    goto :goto_0
.end method

.method public setListener(Lcom/flybird/FBListView$FBListViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBListView;->listener:Lcom/flybird/FBListView$FBListViewListener;

    return-void
.end method
