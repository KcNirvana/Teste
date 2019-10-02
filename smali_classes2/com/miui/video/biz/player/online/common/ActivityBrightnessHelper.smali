.class public final Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;
.super Ljava/lang/Object;
.source "ActivityBrightnessHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "getBrightnessPercent",
        "",
        "getCurrentBrightness",
        "getNewBrightnessByMovent",
        "distanceY",
        "",
        "Companion",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final BRIGHTNESS_MAX_VALUE:I = 0xf

# The value of this static final field might be set in the static constructor
.field private static final BRIGHTNESS_STEP:I = 0x11

.field public static final Companion:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper$Companion;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->Companion:Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper$Companion;

    const/16 v0, 0xf

    sput v0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_MAX_VALUE:I

    sget v0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_MAX_VALUE:I

    const/16 v1, 0xff

    div-int/2addr v1, v0

    sput v1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_STEP:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$getBRIGHTNESS_STEP$cp()I
    .locals 1

    sget v0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_STEP:I

    return v0
.end method


# virtual methods
.method public final getBrightnessPercent()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->getCurrentBrightness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getCurrentBrightness()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v0

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getNewBrightnessByMovent(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->getCurrentBrightness()I

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sget p1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_STEP:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    sget p1, Lcom/miui/video/biz/player/online/common/ActivityBrightnessHelper;->BRIGHTNESS_STEP:I

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    const/16 p1, 0xff

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    const/4 p1, 0x2

    :cond_3
    return p1
.end method
