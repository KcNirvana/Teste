.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FolderItemDecoration.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mPadding:I

.field private mSpanCount:I

.field private mSpanSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mSpanCount:I

    iput p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mSpanSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_1:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/FolderItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
