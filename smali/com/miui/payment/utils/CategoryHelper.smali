.class public Lcom/miui/payment/utils/CategoryHelper;
.super Ljava/lang/Object;
.source "CategoryHelper.java"


# static fields
.field public static final REMAIN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CategoryHelper"

.field private static sCategory:[I

.field private static sCategoryColorRes:Landroid/util/SparseIntArray;

.field private static sCategoryDrawableRes:Landroid/util/SparseIntArray;

.field private static sCategoryStringRes:Landroid/util/SparseIntArray;

.field private static sPieChartLabels:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0xf

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategory:[I

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0b009c

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0b009a

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0091

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x1b0b009f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x1b0b0093

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1b0b009b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x1b0b009d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1b0b0094

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x1b0b0098

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x1b0b0090

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x1b0b0095

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x1b0b009e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x1b0b0096    # 1.1498E-22f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x1b0b0092

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0097

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0099

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const v1, 0x1b020294

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const v1, 0x1b020292

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const v1, 0x1b020288

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x1b020297

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x1b02028b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1b020293

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x1b020295

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1b02028c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x1b020290

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x1b020287

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x1b02028d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x1b020296

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x1b02028e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x1b02028a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const v1, 0x1b02028f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const v1, 0x1b020291

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0f005d

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0f005b

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0f0052

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x1b0f0060

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x1b0f0054

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1b0f005c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x1b0f005e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1b0f0055

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x1b0f0059

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x1b0f0051

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x1b0f0056

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x1b0f005f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x1b0f0057

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x1b0f0053

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0f0058

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    const v1, 0x1b0f005a

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0344

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0348

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0345

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const v1, 0x1b0b033b

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x1b0b034b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x1b0b033d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x1b0b0346

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x1b0b0349

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x1b0b033f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x1b0b0343

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x1b0b033a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x1b0b0340

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x1b0b034a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x1b0b0341

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x1b0b033c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const v1, 0x1b0b0342

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryByIndex(I)I
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategory:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategory:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategory:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getCategoryColor(Landroid/content/Context;I)I
    .locals 7

    const/4 v6, 0x1

    sget-object v1, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "CategoryHelper"

    const-string/jumbo v2, "color unknown category: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/miui/payment/utils/CategoryHelper;->sCategoryColorRes:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static getCategoryCount()I
    .locals 1

    sget-object v0, Lcom/miui/payment/utils/CategoryHelper;->sCategory:[I

    array-length v0, v0

    return v0
.end method

.method public static getCategoryIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconResId(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getCategoryIconCompressedBytes(Landroid/content/res/Resources;I)[B
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v3

    const-string/jumbo v6, "CategoryHelper"

    const-string/jumbo v7, "category icon: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v3, v7, v8}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v5, v4

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v5, "CategoryHelper"

    const-string/jumbo v6, "category icon: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v3, v6, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string/jumbo v5, "CategoryHelper"

    const-string/jumbo v6, "category icon: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v3, v6, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    const-string/jumbo v5, "CategoryHelper"

    const-string/jumbo v6, "category icon: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v3, v6, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    throw v5

    :catch_4
    move-exception v3

    const-string/jumbo v6, "CategoryHelper"

    const-string/jumbo v7, "category icon: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6, v3, v7, v8}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static getCategoryIconResId(I)I
    .locals 6

    sget-object v1, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "CategoryHelper"

    const-string/jumbo v2, "drawable unknown category: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/miui/payment/utils/CategoryHelper;->sCategoryDrawableRes:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/payment/utils/CategoryHelper;->getDefaultCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getCategoryString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    sget-object v1, Lcom/miui/payment/utils/CategoryHelper;->sCategoryStringRes:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "CategoryHelper"

    const-string/jumbo v2, "string unknown category: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getPieChartLabel(Landroid/content/Context;ID)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v3, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-gez v2, :cond_0

    const-string/jumbo v3, "CategoryHelper"

    const-string/jumbo v4, "piechart unknown category: %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/miui/payment/utils/CategoryHelper;->sPieChartLabels:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/payment/utils/CategoryHelper;->getDefaultCategory()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide v4, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v3, p2, v4

    if-gez v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b0347

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v9, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b033e

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
