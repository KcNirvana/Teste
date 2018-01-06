.class public final Lcom/miui/weather2/bg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CircleIndicator:[I

.field public static final CircleIndicator_ci_orientation:I = 0x0

.field public static final LineWrapLayout:[I

.field public static final LineWrapLayout_gap:I = 0x0

.field public static final MyImageView:[I

.field public static final MyImageView_hightDivideWidth:I = 0x1

.field public static final MyImageView_screenPercent:I = 0x0

.field public static final MyImageView_strokeColor:I = 0x2

.field public static final RingTable:[I

.field public static final RingTable_inner_radius:I = 0x1

.field public static final RingTable_outer_radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/miui/weather2/bg$a;->CircleIndicator:[I

    new-array v0, v3, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lcom/miui/weather2/bg$a;->LineWrapLayout:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/bg$a;->MyImageView:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/bg$a;->RingTable:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    :array_1
    .array-data 4
        0x7f010006
        0x7f010007
    .end array-data
.end method
