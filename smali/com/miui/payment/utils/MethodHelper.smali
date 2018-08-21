.class public Lcom/miui/payment/utils/MethodHelper;
.super Ljava/lang/Object;
.source "MethodHelper.java"


# static fields
.field private static final DEFAULT_METHODS:[I

.field private static final TAG:Ljava/lang/String; = "MethodHelper"

.field private static sMethodStringRes:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/payment/utils/MethodHelper;->DEFAULT_METHODS:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x1b0b0308

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xc8

    const v2, 0x1b0b0306

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x12c

    const v2, 0x1b0b030b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    const v2, 0x1b0b0307

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    const v2, 0x1b0b0309

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x1b0b030a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xc8
        0x12c
        0x64
        0x65
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPresetMethodsDesc(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    sget-object v4, Lcom/miui/payment/utils/MethodHelper;->DEFAULT_METHODS:[I

    array-length v1, v4

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v4, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/miui/payment/utils/MethodHelper;->DEFAULT_METHODS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getDefaultMethod()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultMethodDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/payment/utils/MethodHelper;->getDefaultMethod()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPresetMethodCode(I)I
    .locals 1

    sget-object v0, Lcom/miui/payment/utils/MethodHelper;->DEFAULT_METHODS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getPresetMethodDesc(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPresetMethodDesc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v1, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "MethodHelper"

    const-string/jumbo v2, "unknown method: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/miui/payment/utils/MethodHelper;->sMethodStringRes:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/miui/payment/utils/MethodHelper;->getDefaultMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    :cond_0
    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const-string/jumbo v1, "*"

    const-string/jumbo v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
