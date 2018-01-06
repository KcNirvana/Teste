.class public Lcom/miui/weather2/tools/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/weather2/tools/bv;->d:Ljava/util/Map;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/tools/bv;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/tools/bv;->b:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/weather2/tools/bv;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b00bf
        0x7f0b00be
        0x7f0b00be
    .end array-data

    :array_1
    .array-data 4
        0x7f0b00ba
        0x7f0b00b9
        0x7f0b00b9
    .end array-data

    :array_2
    .array-data 4
        0x7f0b00b4
        0x7f0b00b5
    .end array-data
.end method

.method public static a(IZI)Lcom/miui/weather2/b/a;
    .locals 5

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/miui/weather2/b/a;->a:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    sget-object v0, Lcom/miui/weather2/tools/bv;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :pswitch_0
    if-nez p1, :cond_0

    sget-object v0, Lcom/miui/weather2/b/a;->n:[Lcom/miui/weather2/b/a;

    array-length v0, v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(I)I

    move-result v0

    add-int/2addr v0, p2

    sget-object v2, Lcom/miui/weather2/b/a;->n:[Lcom/miui/weather2/b/a;

    array-length v2, v2

    rem-int/2addr v0, v2

    sget-object v2, Lcom/miui/weather2/b/a;->n:[Lcom/miui/weather2/b/a;

    aget-object v2, v2, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/weather2/b/a;->g:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/b/e;->u:[Lcom/miui/weather2/b/e;

    array-length v0, v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(I)I

    move-result v0

    add-int/2addr v0, p2

    sget-object v2, Lcom/miui/weather2/b/e;->u:[Lcom/miui/weather2/b/e;

    array-length v2, v2

    rem-int/2addr v0, v2

    sget-object v2, Lcom/miui/weather2/b/e;->u:[Lcom/miui/weather2/b/e;

    aget-object v2, v2, v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/b/a;->k:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/b/a;->i:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/b/a;->l:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/b/a;->h:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/miui/weather2/b/a;->h:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/miui/weather2/b/a;->j:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/miui/weather2/b/a;->o:[Lcom/miui/weather2/b/a;

    array-length v0, v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->a(I)I

    move-result v0

    add-int/2addr v0, p2

    sget-object v2, Lcom/miui/weather2/b/a;->o:[Lcom/miui/weather2/b/a;

    array-length v2, v2

    rem-int/2addr v0, v2

    sget-object v2, Lcom/miui/weather2/b/a;->o:[Lcom/miui/weather2/b/a;

    aget-object v2, v2, v0

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/miui/weather2/b/a;->g:Lcom/miui/weather2/b/a;

    move-object v2, v0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static b(IZI)I
    .locals 6

    const v2, 0x7f0b00bc

    const/4 v3, 0x0

    const v1, 0x7f0b00bf

    sget-object v0, Lcom/miui/weather2/tools/bv;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/weather2/tools/bv;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/miui/weather2/tools/bv;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_7

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    packed-switch p0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    if-nez p1, :cond_3

    sget-object v2, Lcom/miui/weather2/tools/bv;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v1, Lcom/miui/weather2/tools/bv;->a:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const v0, 0x7f0b00c0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/miui/weather2/tools/bv;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/miui/weather2/tools/bv;->c:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_4
    const v0, 0x7f0b00b4

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b00b6

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b00b7

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b00b8

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0b00bd

    goto :goto_0

    :pswitch_8
    if-nez p1, :cond_6

    sget-object v1, Lcom/miui/weather2/tools/bv;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/miui/weather2/tools/bv;->b:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_5
    const v0, 0x7f0b00ba

    goto :goto_0

    :cond_6
    const v0, 0x7f0b00bb

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0b00be

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
