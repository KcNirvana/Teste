.class public abstract Lcom/miui/optimizemanage/optimizeresult/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TEMPLATE_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field protected transient layoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030059

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030057

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300fd

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300fe

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300fb

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300fc

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300f7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300f8

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300f9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0300fa

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030146

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030145

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030143

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030144

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f030147

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/a;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/m;->layoutId:I

    return v0
.end method

.method public getLayoutIdType()I
    .locals 2

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/m;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/miui/optimizemanage/optimizeresult/m;->layoutId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/optimizeresult/m;->layoutId:I

    return-void
.end method
