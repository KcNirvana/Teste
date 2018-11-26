.class public Lcom/miui/gamebooster/customview/e;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private hq:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;->hs:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/e;->hq:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;->hs:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/e;->hq:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/e;->hq:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    sget-object v1, Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;->hr:Lcom/miui/gamebooster/customview/RecyclerImageView$WEIGHT;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
