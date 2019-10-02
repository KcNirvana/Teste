.class public Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;
.super Ljava/lang/Object;
.source "BatteryIcon.java"


# static fields
.field private static final BATTERY_UNIT_HEIGHT_HDPI:I = 0x26

.field private static final BATTERY_UNIT_HEIGHT_XHDPI:I = 0x32

.field private static final BATTERY_UNIT_HEIGHT_XXHDPI:I = 0x3c

.field private static final BATTERY_UNIT_HEIGHT_XXXHDPI:I = 0x48

.field private static sBatteryIcon:Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;


# instance fields
.field private final BATTERY_RANGE_LOAD:I

.field private defStatSysBattery:I

.field private defStatSysBatteryCharge:I

.field private defStatSysBatteryChargeDarkmode:I

.field private defStatSysBatteryDarkmode:I

.field private mBatteryColumns:I

.field private mChargeDarkLevel:I

.field private mChargeLevel:I

.field private mContext:Landroid/content/Context;

.field private mDarkLevel:I

.field private mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->BATTERY_RANGE_LOAD:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mContext:Landroid/content/Context;

    const/4 p1, 0x4

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mBatteryColumns:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->reset()V

    return-void
.end method

.method private extractDrawable(I)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v13

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    if-nez v13, :cond_0

    return-object v2

    :cond_0
    iget v0, v4, Landroid/util/TypedValue;->density:I

    const/16 v4, 0xf0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/16 v4, 0x26

    goto :goto_1

    :cond_1
    const/16 v4, 0x140

    if-ne v0, v4, :cond_2

    const/16 v4, 0x32

    goto :goto_1

    :cond_2
    const/16 v4, 0x280

    if-ne v0, v4, :cond_3

    const/16 v4, 0x48

    goto :goto_1

    :cond_3
    const/16 v4, 0x3c

    :goto_1
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, v1, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mBatteryColumns:I

    div-int v14, v5, v6

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v15, v5, v4

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v12, v5, v14

    mul-int v5, v4, v14

    new-array v11, v5, [I

    const/16 v16, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v15, :cond_5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_4

    const/4 v7, 0x0

    mul-int v17, v9, v14

    mul-int v18, v10, v4

    move-object v5, v13

    move-object v6, v11

    move v8, v14

    move/from16 v19, v9

    move/from16 v9, v17

    move/from16 v17, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move v11, v14

    move/from16 v20, v12

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v6, 0x0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v5, v18

    move v7, v14

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v12, v20

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v20, v12

    add-int/lit8 v10, v17, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method private generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;
    .locals 8

    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x42c80000    # 100.0f

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move v5, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p2, -0xa

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_0
    const/16 v6, 0x64

    if-eqz p3, :cond_2

    add-int/lit8 p2, p2, 0xa

    if-le p2, v6, :cond_2

    const/16 p2, 0x64

    :cond_2
    :goto_1
    if-ge v4, v1, :cond_5

    float-to-int p3, v2

    add-float/2addr v2, v3

    float-to-int v6, v2

    if-lt v6, v5, :cond_4

    if-le p3, p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, v6, v7}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v0, p3, v6, v7}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->sBatteryIcon:Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->sBatteryIcon:Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    :cond_0
    sget-object p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->sBatteryIcon:Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    return-void
.end method

.method public getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_charge:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeLevel:I

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object p1
.end method

.method public getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_charge_darkmode:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mChargeDarkLevel:I

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object p1
.end method

.method public getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    :cond_0
    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mLevel:I

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object p1
.end method

.method public getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    :cond_0
    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_darkmode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mDarkLevel:I

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object p1
.end method

.method public reset()V
    .locals 1

    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBattery:I

    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_charge:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryCharge:I

    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_darkmode:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryDarkmode:I

    sget v0, Lcom/miui/video/player/service/R$raw;->stat_sys_battery_charge_darkmode:I

    iput v0, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryChargeDarkmode:I

    return-void
.end method

.method public setStats(IIII)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBattery:I

    :cond_0
    if-eqz p2, :cond_1

    iput p2, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryCharge:I

    :cond_1
    if-eqz p3, :cond_2

    iput p3, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryDarkmode:I

    :cond_2
    if-eqz p3, :cond_3

    iput p4, p0, Lcom/miui/video/player/service/ui/systeminfo/BatteryIcon;->defStatSysBatteryChargeDarkmode:I

    :cond_3
    return-void
.end method
