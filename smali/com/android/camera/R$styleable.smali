.class public final Lcom/android/camera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CameraPreference:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I

.field public static final PreviewListPreference:[I

.field public static final RecyclerView:[I

.field public static final ToggleSwitch:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const v3, 0x901000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [I

    const v1, 0x9010004

    aput v1, v0, v5

    sput-object v0, Lcom/android/camera/R$styleable;->CameraPreference:[I

    const v0, 0x901000b

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconIndicator:[I

    const v0, 0x901000c

    const v1, 0x901000d

    const v2, 0x901000e

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->IconListPreference:[I

    const v0, 0x9010005

    const v1, 0x9010006

    const v2, 0x9010007

    const v3, 0x9010008

    const v4, 0x9010009

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->ListPreference:[I

    new-array v0, v6, [I

    const v1, 0x901000f

    aput v1, v0, v5

    sput-object v0, Lcom/android/camera/R$styleable;->PreviewListPreference:[I

    const v0, 0x10100c4

    const/high16 v1, 0x9010000

    const v2, 0x9010001

    const v3, 0x9010002

    const v4, 0x9010003

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/camera/R$styleable;->RecyclerView:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/R$styleable;->ToggleSwitch:[I

    return-void

    :array_0
    .array-data 4
        0x9010010
        0x9010011
        0x9010012
        0x9010013
        0x9010014
        0x9010015
        0x9010016
        0x9010017
        0x9010018
        0x9010019
        0x901001a
        0x901001b
        0x901001c
        0x901001d
        0x901001e
        0x901001f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
