.class public Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field private static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TILE_MODE_UNDEFINED:I = -0x2


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:F

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private final mCornerRadii:[F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasColorFilter:Z

.field private mIsOval:Z

.field private mMutateBackground:Z

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->$assertionsDisabled:Z

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorMod:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mHasColorFilter:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v12, 0x4

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorMod:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mHasColorFilter:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    sget-object v12, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    sget-object v12, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    sget-object v12, Lcom/miui/personalassistant/R$styleable;->RoundedImageView:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ltz v7, :cond_0

    sget-object v12, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v12, v12, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    array-length v8, v12

    :goto_1
    if-ge v6, v8, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v12, v12, v6

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x0

    aput v13, v12, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    if-nez v4, :cond_4

    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_3

    const/4 v5, 0x0

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    array-length v8, v12

    :goto_3
    if-ge v6, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput v5, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x6

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    :cond_5
    const/4 v12, 0x7

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez v12, :cond_6

    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_6
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    const/16 v12, 0xa

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/4 v12, -0x2

    if-eq v9, v12, :cond_7

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_7
    const/16 v12, 0xb

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v12, -0x2

    if-eq v10, v12, :cond_8

    invoke-static {v10}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_8
    const/16 v12, 0xc

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/4 v12, -0x2

    if-eq v11, v12, :cond_9

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-super {v0, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private applyColorMod()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resolveBackgroundResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    if-eqz v3, :cond_1

    :try_start_0
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    goto :goto_1
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    if-eqz v3, :cond_1

    :try_start_0
    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v3, p1, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    invoke-virtual {v3, p2}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v3

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setBorderWidth(F)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setOval(Z)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    if-eqz v3, :cond_2

    check-cast p1, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->setCornerRadius(FFFF)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->applyColorMod()V

    goto :goto_0

    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateBackgroundDrawableAttrs(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getCornerRadius(I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, p1

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    return v0
.end method

.method public mutateBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public mutatesBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mMutateBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundResource:I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->resolveBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mBorderWidth:F

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setBorderWidth(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mHasColorFilter:Z

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mColorMod:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->applyColorMod()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput p1, v0, v1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput p2, v0, v2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput p3, v0, v4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput p4, v0, v3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(IF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mCornerRadii:[F

    aput p2, v0, p1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadiusDimen(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setCornerRadius(FFFF)V

    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setCornerRadius(IF)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mResource:I

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mIsOval:Z

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    sget-boolean v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateDrawableAttrs()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/RoundedImageView;->invalidate()V

    goto :goto_0
.end method
