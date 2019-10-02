.class public Lcom/miui/video/player/service/utils/SpeedRateUtil;
.super Ljava/lang/Object;
.source "SpeedRateUtil.java"


# static fields
.field private static final APPROXIMATE_VALUIE:D = 1.0E-8

.field public static final DEFAULT_RATIO:Ljava/lang/String; = "1.0"

.field private static mRatioImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRatioText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRatioValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    sget v2, Lcom/miui/video/player/service/R$drawable;->speed_rate_0_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/miui/video/player/service/R$drawable;->speed_rate_1_0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/miui/video/player/service/R$drawable;->speed_rate_1_25:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget v2, Lcom/miui/video/player/service/R$drawable;->speed_rate_1_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget v2, Lcom/miui/video/player/service/R$drawable;->speed_rate_2_0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    const-string v1, "0.5"

    const-string v2, "1.0"

    const-string v8, "1.25"

    const-string v9, "1.5"

    const-string v10, "2.0"

    filled-new-array {v1, v2, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Float;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v5

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v6

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioValue:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullRatioValue(Ljava/lang/String;)F
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0

    :cond_3
    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v2}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0

    :cond_4
    invoke-static {v1}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioValue(I)F

    move-result p0

    return p0
.end method

.method public static getRatioImgId(F)I
    .locals 8

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_0

    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v4

    const/4 v2, 0x1

    if-gtz p0, :cond_1

    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double p0, v6, v4

    if-gtz p0, :cond_2

    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    sub-double v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double p0, v6, v4

    if-gtz p0, :cond_3

    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p0, v0, v4

    if-gtz p0, :cond_4

    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_4
    sget-object p0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getRatioPosition(F)I
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioImgList:Ljava/util/List;

    invoke-static {p0}, Lcom/miui/video/player/service/utils/SpeedRateUtil;->getRatioImgId(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getRatioText(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getRatioText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    return-object v0
.end method

.method public static getRatioValue(I)F
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioValue:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getSpeedRatioCount()I
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/utils/SpeedRateUtil;->mRatioText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
